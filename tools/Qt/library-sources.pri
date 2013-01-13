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
