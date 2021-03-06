/* \file ParIterator.cpp
 * This file is part of LyX, the document processor.
 * Licence details can be found in the file COPYING.
 *
 * \author unknown
 * \author Lars Gullik Bjønnes
 *
 * Full author contact details are available in file CREDITS.
 */

#include <lyxview/config.h>

#include <lyxview/para/ParIterator.h>

#include <lyxview/para/Paragraph.h>
#include <lyxview/text/Text.h>

#include <lyxview/insets/Inset.h>


namespace lyx {

//////////////////////////////////////////////////////////////////////////
//
// ParIterator
//
//////////////////////////////////////////////////////////////////////////

ParIterator::ParIterator(DocIterator const & dit)
	: DocIterator(dit)
{}


ParIterator::ParIterator(ParIterator const & pi)
	: DocIterator(DocIterator(pi))
{}


ParIterator par_iterator_begin(Inset & inset)
{
	return ParIterator(doc_iterator_begin(&inset.buffer(), &inset));
}


ParIterator par_iterator_end(Inset & inset)
{
	return ParIterator(doc_iterator_end(&inset.buffer(), &inset));
}


ParIterator & ParIterator::operator++()
{
	forwardPar();
	return *this;
}


ParIterator ParIterator::operator++(int)
{
	ParIterator tmp(*this);
	forwardPar();
	return tmp;
}


#if 0
// Unused member functions. Also having this makes ParIterator not be
// an forward iterator anymore. So unless we change that, this function
// should not be compiled/used. (Lgb)
ParIterator & ParIterator::operator--()
{
	// FIXME: look here
//	DocIterator::backwardPar();
	return *this;
}
#endif


Paragraph & ParIterator::operator*() const
{
	return const_cast<Paragraph&>(text()->getPar(pit()));
}


pit_type ParIterator::pit() const
{
	return DocIterator::pit();
}


Paragraph * ParIterator::operator->() const
{
	return const_cast<Paragraph*>(&text()->getPar(pit()));
}


pit_type ParIterator::outerPar() const
{
	return bottom().pit();
}


ParagraphList & ParIterator::plist() const
{
	return const_cast<ParagraphList&>(text()->paragraphs());
}


//////////////////////////////////////////////////////////////////////////
//
// ParConstIterator
//
//////////////////////////////////////////////////////////////////////////


ParConstIterator::ParConstIterator(Buffer const * buf)
	: DocIterator(const_cast<Buffer *>(buf))
{}


ParConstIterator::ParConstIterator(DocIterator const & dit)
	: DocIterator(dit)
{}


ParConstIterator::ParConstIterator(ParConstIterator const & pi)
	: DocIterator(DocIterator(pi))
{}


void ParConstIterator::push_back(Inset const & inset)
{
	DocIterator::push_back(CursorSlice(const_cast<Inset &>(inset)));
}


ParConstIterator & ParConstIterator::operator++()
{
	DocIterator::forwardPar();
	return *this;
}


Paragraph const & ParConstIterator::operator*() const
{
	return text()->getPar(pit());
}


Paragraph const * ParConstIterator::operator->() const
{
	return &text()->getPar(pit());
}


ParagraphList const & ParConstIterator::plist() const
{
	return text()->paragraphs();
}

#if 0
bool operator==(ParConstIterator const & iter1, ParConstIterator const & iter2)
{
	// FIXME: this makes two full copies!
	return DocIterator(iter1) == DocIterator(iter2);
}


bool operator!=(ParConstIterator const & iter1, ParConstIterator const & iter2)
{
	return !(iter1 == iter2);
}
#endif


} // namespace lyx
