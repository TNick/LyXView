/**
 * \file InsetIterator.cpp
 * This file is part of LyX, the document processor.
 * Licence details can be found in the file COPYING.
 *
 * \author Alfredo Braunstein
 * \author André Pönitz
 *
 * Full author contact details are available in file CREDITS.
 */

#include <lyxview/config.h>

#include <lyxview/insets/InsetIterator.h>

#include <lyxview/support/lassert.h>


namespace lyx {


InsetIterator::InsetIterator(Inset & inset)
	: DocIterator(&inset.buffer(), &inset)
{
}


InsetIterator inset_iterator_begin(Inset & inset)
{
	InsetIterator it = InsetIterator(inset);
	it.forwardInset();
	return it;
}


InsetIterator inset_iterator_end(Inset & inset)
{
	return InsetIterator(inset);
}


} // namespace lyx
