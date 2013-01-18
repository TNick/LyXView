/**
 * \file InsetMathKern.cpp
 * This file is part of LyX, the document processor.
 * Licence details can be found in the file COPYING.
 *
 * \author André Pönitz
 *
 * Full author contact details are available in file CREDITS.
 */

#include <lyxview/config.h>

#include "InsetMathKern.h"
#include "MathStream.h"
#include "MathStream.h"
#include "MathSupport.h"
#include <lyxview/logic/Dimension.h>

#include <lyxview/support/docstring.h>

namespace lyx {

InsetMathKern::InsetMathKern()
{
}


InsetMathKern::InsetMathKern(Length const & w)
	: wid_(w)
{
}


InsetMathKern::InsetMathKern(docstring const & s)
	: wid_(to_utf8(s))
{
}


Inset * InsetMathKern::clone() const
{
	return new InsetMathKern(*this);
}


void InsetMathKern::metrics(MetricsInfo & mi, Dimension & dim) const
{
	dim.asc = 0;
	dim.des = 0;
	dim.wid = wid_.inPixels(0, mathed_char_width(mi.base.font, 'M'));
}


void InsetMathKern::draw(PainterInfo &, int, int) const
{}


void InsetMathKern::write(WriteStream & os) const
{
	if (wid_.empty())
		os << "\\kern" << ' ';
	else
		os << "\\kern" << from_utf8(wid_.asLatexString()) << ' ';
}


void InsetMathKern::normalize(NormalStream & os) const
{
	if (wid_.empty())
		os << "[kern]";
	else
		os << "[kern " << from_utf8(wid_.asLatexString()) << ']';
}


} // namespace lyx
