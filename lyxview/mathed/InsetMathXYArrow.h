// -*- C++ -*-
/**
 * \file InsetMathXYArrow.h
 * This file is part of LyX, the document processor.
 * Licence details can be found in the file COPYING.
 *
 * \author André Pönitz
 *
 * Full author contact details are available in file CREDITS.
 */

#ifndef MATH_XYARROWINSET_H
#define MATH_ARROWINSET_H

#include "InsetMathNest.h"
#include <lyxview/metrics/MetricsInfo.h>


namespace lyx {


// for the \ar stuff in \xymatrix

class InsetMathXYMatrix;

class InsetMathXYArrow : public InsetMathNest {
public:
	///
	InsetMathXYArrow();
	///
	virtual Inset * clone() const;
	///
	bool metrics(MetricsInfo & mi) const;
	///
	void draw(PainterInfo & pi, int x, int y) const;
	///
	InsetMathXYArrow * asXYArrowInset() { return this; }

	///
	void write(WriteStream & os) const;
	///
	void normalize(NormalStream &) const;
	///
	InsetMathXYMatrix const * targetMatrix() const;
	///
	MathData const & targetCell() const;
	///
	MathData const & sourceCell() const;
	///
	InsetCode lyxCode() const { return MATH_XYARROW_CODE; }
	///
	void mathmlize(MathStream &) const;
	///
	void htmlize(HtmlStream &) const;

	///
	bool up_;
	///
	mutable MetricsInfo mi_;
	///
	mutable Font font_;
	///
	mutable InsetMathXYMatrix const * target_;
};



} // namespace lyx
#endif
