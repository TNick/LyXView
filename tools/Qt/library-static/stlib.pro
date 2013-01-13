
#######################################################
#             Building a static library               #
#######################################################
TEMPLATE = lib
CONFIG(debug, debug|release) {
	TARGET = slyxview_debug
} else {
	TARGET = slixview
}
CONFIG += static warn_on build_all debug_and_release
DEFINES += LYXVIEW_LIBRARY
QT += core gui


#######################################################
#                     Components                      #
#######################################################

include( "../version.pri" )
include( "../local_defs.pri" )
include( "../library-sources.pri" )


#######################################################
#       Where to output the files we generate?        #
#######################################################
isEmpty( DESTDIR ) {
	DESTDIR	= ../../../build
}
isEmpty( OBJECTS_DIR ) {
	OBJECTS_DIR = ./tmp
}
isEmpty( MOC_DIR ) {
	MOC_DIR = ./tmp
}
isEmpty( UI_DIR ) {
	UI_DIR = ./tmp
}


#######################################################
#                    Components                       #
#######################################################

TRANSLATIONS    += \
	slyxview_ro.ts


