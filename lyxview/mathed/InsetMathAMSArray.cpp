/**
 * \file InsetMathAMSArray.cpp
 * This file is part of LyX, the document processor.
 * Licence details can be found in the file COPYING.
 *
 * \author André Pönitz
 *
 * Full author contact details are available in file CREDITS.
 */

#include <lyxview/config.h>

#include "InsetMathAMSArray.h"

#include "LaTeXFeatures.h"
#include "MathData.h"
#include "MathStream.h"
#include "MathSupport.h"
#include <lyxview/metrics/MetricsInfo.h>

#include "FuncRequest.h"
#include "FuncStatus.h"
#include <lyxview/support/gettext.h>

#include <lyxview/support/lstrings.h>

#include <sstream>
#include <ostream>


using namespace std;
using namespace lyx::support;

namespace lyx {


InsetMathAMSArray::InsetMathAMSArray(Buffer * buf, docstring const & name,
		int m, int n)
	: InsetMathGrid(buf, m, n), name_(name)
{}


InsetMathAMSArray::InsetMathAMSArray(Buffer * buf, docstring const & name)
	: InsetMathGrid(buf, 1, 1), name_(name)
{}


Inset * InsetMathAMSArray::clone() const
{
	return new InsetMathAMSArray(*this);
}


char const * InsetMathAMSArray::name_left() const
{
	if (name_ == "bmatrix")
		return "[";
	if (name_ == "Bmatrix")
		return "{";
	if (name_ == "vmatrix")
		return "|";
	if (name_ == "Vmatrix")
		return "Vert";
	if (name_ == "pmatrix")
		return "(";
	return ".";
}


char const * InsetMathAMSArray::name_right() const
{
	if (name_ == "bmatrix")
		return "]";
	if (name_ == "Bmatrix")
		return "}";
	if (name_ == "vmatrix")
		return "|";
	if (name_ == "Vmatrix")
		return "Vert";
	if (name_ == "pmatrix")
		return ")";
	return ".";
}


void InsetMathAMSArray::metrics(MetricsInfo & mi, Dimension & dim) const
{
	ArrayChanger dummy(mi.base);
	InsetMathGrid::metrics(mi, dim);
	dim.wid += 14;
}


void InsetMathAMSArray::draw(PainterInfo & pi, int x, int y) const
{
	Dimension const dim = dimension(*pi.base.bv);
	int const yy = y - dim.ascent();
	// Drawing the deco after an ArrayChanger does not work
	mathed_draw_deco(pi, x + 1, yy, 5, dim.height(), from_ascii(name_left()));
	mathed_draw_deco(pi, x + dim.width() - 8, yy, 5, dim.height(), from_ascii(name_right()));
	ArrayChanger dummy(pi.base);
	InsetMathGrid::drawWithMargin(pi, x, y, 6, 8);
}


bool InsetMathAMSArray::getStatus(Cursor & cur, FuncRequest const & cmd,
		FuncStatus & flag) const
{
	switch (cmd.action()) {
	case LFUN_INSET_MODIFY: {
		istringstream is(to_utf8(cmd.argument()));
		string s;
		is >> s;
		if (s != "tabular")
			break;
		is >> s;
		if (s == "add-vline-left" || s == "add-vline-right") {
			flag.message(bformat(
				from_utf8(N_("Can't add vertical grid lines in '%1$s'")),
				name_));
			flag.setEnabled(false);
			return true;
		}
		break;
	}
	default:
		break;
	}
	return InsetMathGrid::getStatus(cur, cmd, flag);
}


void InsetMathAMSArray::write(WriteStream & os) const
{
	MathEnsurer ensurer(os);
	os << "\\begin{" << name_ << '}';
	InsetMathGrid::write(os);
	os << "\\end{" << name_ << '}';
}


void InsetMathAMSArray::infoize(odocstream & os) const
{
	docstring name = name_;
	name[0] = support::uppercase(name[0]);
	os << name << ' ';
}


void InsetMathAMSArray::normalize(NormalStream & os) const
{
	os << '[' << name_ << ' ';
	InsetMathGrid::normalize(os);
	os << ']';
}


void InsetMathAMSArray::validate(LaTeXFeatures & features) const
{
	if (name_ == "CD")
		// amscd is independent of amsmath although it is part of
		// the amsmath bundle
		features.require("amscd");
	else
		features.require("amsmath");
	InsetMathGrid::validate(features);
}


} // namespace lyx
