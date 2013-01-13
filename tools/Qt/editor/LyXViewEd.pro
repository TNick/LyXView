
#######################################################
#        Building a stand-alone GUI application       #
#######################################################
TEMPLATE = app
CONFIG(debug, debug|release) {
	TARGET = LyXViewEd_debug
} else {
	TARGET = LyXViewEd
}
CONFIG += warn_on build_all debug_and_release
INCLUDEPATH += ../../..
QT += core gui webkit


#######################################################
#              Use the dynamic library                #
#######################################################
LIBS += -L../../../build
CONFIG(debug, debug|release) {
	LIBS += -llyxview_debug
} else {
	LIBS += -llyxview
}


#######################################################
#                     Components                      #
#######################################################

include( "../version.pri" )
include( "../local_defs.pri" )


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

FORMS += 


RESOURCES += 


HEADERS += 


SOURCES += 



TRANSLATIONS    += \
	LyXViewEd_ro.ts

SOURCES += \
    ../../../lyxview/editor-app/editor-main.cc

