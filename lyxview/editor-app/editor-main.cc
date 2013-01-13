/* ========================================================================= */
/* ------------------------------------------------------------------------- */
/*!
  \file			editor-main.cc
  \date			Nov 2012
  \author		TNick

  \brief		Contains application's entry point


*//*


 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 Please read COPYING and README files in root folder
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*/
/* ------------------------------------------------------------------------- */
/* ========================================================================= */
//
//
//
//
/*  INCLUDES    ------------------------------------------------------------ */

#include    <QApplication>


/*  INCLUDES    ============================================================ */
//
//
//
//
/*  DATA    ---------------------------------------------------------------- */

#define	LYXVIEWED_NAME		"LixViewEd"

/*  DATA    ================================================================ */
//
//
//
//
/*  FUNCTIONS    ----------------------------------------------------------- */

/* ------------------------------------------------------------------------- */
int			main			( int argc, char *argv[] )
{
	/* prepare to start */
	QApplication apl( argc, argv );
	Q_UNUSED( apl );

	/* prepare the ground for easy access to settings */
	QCoreApplication::setOrganizationName( "TNick" );
	QCoreApplication::setOrganizationDomain( "sites.google.com/site/tnickweb/" );
	QCoreApplication::setApplicationName( LYXVIEWED_NAME );

    int i_ret = 0;

	/* exit */
	return i_ret;
}
/* ========================================================================= */

/*  FUNCTIONS    =========================================================== */
//
//
//
//
/* ------------------------------------------------------------------------- */
/* ========================================================================= */
