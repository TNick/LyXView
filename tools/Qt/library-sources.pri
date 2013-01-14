INCLUDEPATH += ../../..
INCLUDEPATH += ../../../boost


OTHER_FILES += 

RESOURCES += 

FORMS += 


HEADERS += \
	../../../lyxview/insets/InsetCode.h \
	../../../lyxview/insets/Inset.h \
	../../../lyxview/logic/Buffer.h \
	../../../lyxview/support/convert.h \
	../../../lyxview/support/debug.h \
	../../../lyxview/support/docstream.h \
	../../../lyxview/support/docstring.h \
	../../../lyxview/support/environment.h \
	../../../lyxview/support/ExceptionMessage.h \
	../../../lyxview/support/FileName.h \
	../../../lyxview/support/FileNameList.h \
	../../../lyxview/support/filetools.h \
	../../../lyxview/support/lassert.h \
	../../../lyxview/support/lstrings.h \
	../../../lyxview/support/mutex.h \
	../../../lyxview/support/os.h \
	../../../lyxview/support/qstring_helpers.h \
	../../../lyxview/support/regex.h \
	../../../lyxview/support/strfwd.h \
	../../../lyxview/support/textutils.h \
	../../../lyxview/support/types.h \
	../../../lyxview/support/unicode.h


SOURCES += \
	../../../lyxview/insets/InsetCode.cpp \
	../../../lyxview/insets/Inset.cpp \
	../../../lyxview/logic/Buffer.cpp \
	../../../lyxview/support/convert.cpp \
	../../../lyxview/support/debug.cpp \
	../../../lyxview/support/docstring.cpp \
	../../../lyxview/support/environment.cpp \
	../../../lyxview/support/FileName.cpp \
	../../../lyxview/support/filetools.cpp \
	../../../lyxview/support/lassert.cpp \
	../../../lyxview/support/lstrings.cpp \
	../../../lyxview/support/mutex.cpp \
	../../../lyxview/support/qstring_helpers.cpp \
	../../../lyxview/support/unicode.cpp



unix {
	SOURCES += \
	../../../lyxview/support/os_unix.cpp
}

win32 {
	SOURCES += \
		../../../lyxview/support/os_win32.cpp
	HEADERS += \
		../../../lyxview/support/os_win32.h
}

cygwin {
	SOURCES += \
		../../../lyxview/support/os_cygwin.cpp
}

HEADERS += \
    ../../../lyxview/LyX.h

SOURCES += \
    ../../../lyxview/LyX.cpp

HEADERS += \
    ../../../lyxview/logic/BufferList.h

SOURCES += \
    ../../../lyxview/logic/BufferList.cpp

HEADERS += \
    ../../../lyxview/frontends/alert.h

HEADERS += \
    ../../../lyxview/logic/BufferParams.h

SOURCES += \
    ../../../lyxview/logic/BufferParams.cpp

HEADERS += \
    ../../../lyxview/support/copied_ptr.h \
    ../../../lyxview/support/bind.h

HEADERS += \
    ../../../lyxview/support/functional.h \
    ../../../lyxview/support/foreach.h

HEADERS += \
    ../../../lyxview/insets/InsetLayout.h

SOURCES += \
    ../../../lyxview/insets/InsetLayout.cpp

HEADERS += \
    ../../../lyxview/logic/TextClass.h

SOURCES += \
    ../../../lyxview/logic/TextClass.cpp

HEADERS += \
    ../../../lyxview/logic/LayoutEnums.h \
    ../../../lyxview/logic/Layout.h

SOURCES += \
    ../../../lyxview/logic/Layout.cpp

HEADERS += \
    ../../../lyxview/logic/FontList.h \
    ../../../lyxview/logic/FontInfo.h \
    ../../../lyxview/logic/FontEnums.h \
    ../../../lyxview/logic/Font.h

SOURCES += \
    ../../../lyxview/logic/FontList.cpp \
    ../../../lyxview/logic/FontInfo.cpp \
    ../../../lyxview/logic/Font.cpp

HEADERS += \
    ../../../lyxview/logic/ColorSet.h \
    ../../../lyxview/logic/ColorCode.h \
    ../../../lyxview/logic/Color.h

SOURCES += \
    ../../../lyxview/logic/Color.cpp

HEADERS += \
    ../../../lyxview/logic/Language.h

SOURCES += \
    ../../../lyxview/logic/Language.cpp

HEADERS += \
    ../../../lyxview/logic/Encoding.h

SOURCES += \
    ../../../lyxview/logic/Encoding.cpp
