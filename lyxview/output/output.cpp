/**
 * \file output.cpp
 * This file is part of LyX, the document processor.
 * Licence details can be found in the file COPYING.
 *
 * \author Lars Gullik Bjønnes
 *
 * Full author contact details are available in file CREDITS.
 */

#include <lyxview/config.h>

#include <lyxview/output/output.h>

#ifdef	INCLUDE_ORIGINAL
#include <lyxview/support/gettext.h>
#endif	// INCLUDE_ORIGINAL

#include <lyxview/frontends/alert.h>

#include <lyxview/support/FileName.h>
#include <lyxview/support/filetools.h>
#include <lyxview/support/lstrings.h>

using namespace std;
using namespace lyx::support;

namespace lyx {

namespace {

template<typename OFStream>
bool doOpenFileWrite(OFStream & ofs, FileName const & fname)
{
	ofs.open(fname.toFilesystemEncoding().c_str());
	if (ofs)
		return true;
	docstring const file = fname.displayName(50);
	docstring text = bformat(_("Could not open the specified "
							 "document\n%1$s."), file);
	frontend::Alert::error(_("Could not open file"), text);
	return false;
}

}


bool openFileWrite(ofstream & ofs, FileName const & fname)
{
	return doOpenFileWrite(ofs, fname);
}


bool openFileWrite(ofdocstream & ofs, FileName const & fname)
{
	return doOpenFileWrite(ofs, fname);
}


} // namespace lyx
