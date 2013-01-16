/**
 * \file buffer_funcs.cpp
 * This file is part of LyX, the document processor.
 * Licence details can be found in the file COPYING.
 *
 * \author Lars Gullik Bjønnes
 * \author Alfredo Braunstein
 *
 * Full author contact details are available in file CREDITS.
 *
 */

#include <lyxview/config.h>

#include <lyxview/logic/buffer_funcs.h>
#include <lyxview/logic/Buffer.h>
#include <lyxview/logic/BufferList.h>
#include <lyxview/logic/BufferParams.h>
#include <lyxview/logic/DocIterator.h>
#include <lyxview/logic/Counters.h>
#include <lyxview/insets/InsetList.h>
#include <lyxview/logic/Language.h>
#include <lyxview/logic/Layout.h>
#include <lyxview/LyX.h>
#include <lyxview/text/TextClass.h>
#include <lyxview/para/Paragraph.h>
#include <lyxview/para/ParagraphList.h>
#include <lyxview/para/ParagraphParameters.h>
#include <lyxview/para/ParIterator.h>
#include <lyxview/text/Text.h>

#include <lyxview/frontends/alert.h>

#ifdef	INCLUDE_ORIGINAL
#include <lyxview/logic/ErrorList.h>
#include <lyxview/logic/Floating.h>
#include <lyxview/logic/FloatList.h>
#include <lyxview/logic/LaTeX.h>
#include <lyxview/logic/TexRow.h>
#include <lyxview/logic/TocBackend.h>
#include <lyxview/insets/InsetBibitem.h>
#include <lyxview/insets/InsetInclude.h>
#include <lyxview/support/gettext.h>
#endif	// INCLUDE_ORIGINAL

#include <lyxview/support/lassert.h>
#include <lyxview/support/convert.h>
#include <lyxview/support/debug.h>
#include <lyxview/support/filetools.h>
#include <lyxview/support/lstrings.h>
#include <lyxview/support/textutils.h>

using namespace std;
using namespace lyx::support;

namespace lyx {

namespace Alert = frontend::Alert;


Buffer * checkAndLoadLyXFile(FileName const & filename, bool const acceptDirty)
{
	// File already open?
	Buffer * checkBuffer = theBufferList().getBuffer(filename);
	if (checkBuffer) {
		// Sometimes (when setting the master buffer from a child)
		// we accept a dirty buffer right away (otherwise we'd get
		// an infinite loop (bug 5514).
		// We also accept a dirty buffer when the document has not
		// yet been saved to disk.
		if (checkBuffer->isClean() || acceptDirty || !filename.exists())
			return checkBuffer;
		docstring const file = makeDisplayPath(filename.absFileName(), 20);
		docstring const text = bformat(_(
				"The document %1$s is already loaded and has unsaved changes.\n"
				"Do you want to abandon your changes and reload the version on disk?"), file);
		if (!Alert::prompt(_("Reload saved document?"),
			  text, 0, 1,  _("&Reload"), _("&Keep Changes"))) {
			// reload the document
			if (checkBuffer->reload() != Buffer::ReadSuccess)
				return 0;
		}
		return checkBuffer;
	}

	if (filename.exists()) {
		if (!filename.isReadableFile()) {
			docstring text = bformat(_("The file %1$s exists but is not "
				"readable by the current user."),
				from_utf8(filename.absFileName()));
			Alert::error(_("File not readable!"), text);
			return 0;
		}
		Buffer * b = theBufferList().newBuffer(filename.absFileName());
		if (!b) {
			// Buffer creation is not possible.
			return 0;
		}
		if (b->loadLyXFile() != Buffer::ReadSuccess) {
			// do not save an emergency file when releasing the buffer
			b->markClean();
			theBufferList().release(b);
			return 0;
		}
		return b;
	}

	docstring text = bformat(_("The document %1$s does not yet "
		"exist.\n\nDo you want to create a new document?"),
		from_utf8(filename.absFileName()));
	if (!Alert::prompt(_("Create new document?"),
			text, 0, 1, _("&Create"), _("Cancel")))
		return newFile(filename.absFileName(), string(), true);

	return 0;
}


// FIXME newFile() should probably be a member method of Application...
Buffer * newFile(string const & filename, string const & templatename,
		 bool is_named)
{
	// get a free buffer
	Buffer * b = theBufferList().newBuffer(filename);
	if (!b)
		// Buffer creation is not possible.
		return 0;

	FileName tname;
	// use defaults.lyx as a default template if it exists.
	if (templatename.empty())
		tname = libFileSearch("templates", "defaults.lyx");
	else
		tname = makeAbsPath(templatename);

	if (!tname.empty()) {
		if (b->loadThisLyXFile(tname) != Buffer::ReadSuccess) {
			docstring const file = makeDisplayPath(tname.absFileName(), 50);
			docstring const text  = bformat(
				_("The specified document template\n%1$s\ncould not be read."),
				file);
			Alert::error(_("Could not read template"), text);
			theBufferList().release(b);
			return 0;
		}
	}

	if (is_named)
		// in this case, the user chose the filename, so we
		// assume that she really does want this file.
		b->markDirty();
	else
		b->setUnnamed();

	b->setReadonly(false);
	b->setFullyLoaded(true);

	return b;
}


Buffer * newUnnamedFile(FileName const & path, string const & prefix,
						string const & templatename)
{
	static map<string, int> file_number;

	FileName filename;

	do {
		filename.set(path, 
			prefix + convert<string>(++file_number[prefix]) + ".lyx");
	}
	while (theBufferList().exists(filename) || filename.isReadableFile());
		
	return newFile(filename.absFileName(), templatename, false);
}


Buffer * loadIfNeeded(FileName const & fname)
{
	Buffer * buffer = theBufferList().getBuffer(fname);
	if (!buffer) {
		if (!fname.exists())
			return 0;

		buffer = theBufferList().newBuffer(fname.absFileName());
		if (!buffer)
			// Buffer creation is not possible.
			return 0;

		if (buffer->loadLyXFile() != Buffer::ReadSuccess) {
			//close the buffer we just opened
			theBufferList().release(buffer);
			return 0;
		}
	}
	return buffer;
}


} // namespace lyx
