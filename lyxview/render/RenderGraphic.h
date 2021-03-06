// -*- C++ -*-
/**
 * \file RenderGraphic.h
 * This file is part of LyX, the document processor.
 * Licence details can be found in the file COPYING.
 *
 * \author Angus Leeming
 *
 * Full author contact details are available in file CREDITS.
 */

#ifndef RENDERGRAPHIC_H
#define RENDERGRAPHIC_H

#include "RenderBase.h"

#ifdef	INCLUDE_ORIGINAL
#include <lyxview/graphics/GraphicsLoader.h>
#include <lyxview/graphics/GraphicsParams.h>
#endif	// INCLUDE_ORIGINAL


namespace lyx {


class RenderGraphic : public RenderBase
{
public:
	RenderGraphic(Inset const *);
	RenderGraphic(RenderGraphic const &, Inset const *);
	RenderBase * clone(Inset const *) const;

	/// compute the size of the object returned in dim
	void metrics(MetricsInfo & mi, Dimension & dim) const;
	/// draw inset
	void draw(PainterInfo & pi, int x, int y) const;

	/// Refresh the info about which file to display and how to display it.
	void update(graphics::Params const & params);
	/// Reloads the image if necessary
	void reload() const;

	/// equivalent to dynamic_cast
	virtual RenderGraphic * asGraphic() { return this; }

private:
	/// Not implemented.
	RenderGraphic & operator=(RenderGraphic const &);

	/// The stored data.
	graphics::Loader loader_;
	graphics::Params params_;
};



} // namespace lyx

#endif // NOT RENDERGRAPHIC_H
