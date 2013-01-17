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

HEADERS += \
    ../../../lyxview/logic/Dimension.h

SOURCES += \
    ../../../lyxview/logic/Dimension.cpp

HEADERS += \
    ../../../lyxview/view/BufferView.h

SOURCES += \
    ../../../lyxview/view/BufferView.cpp

HEADERS += \
    ../../../lyxview/view/update_flags.h

HEADERS += \
    ../../../lyxview/logic/CoordCache.h

SOURCES += \
    ../../../lyxview/logic/CoordCache.cpp

HEADERS += \
    ../../../lyxview/logic/DocIterator.h

SOURCES += \
    ../../../lyxview/logic/DocIterator.cpp

HEADERS += \
    ../../../lyxview/logic/CursorSlice.h

SOURCES += \
    ../../../lyxview/logic/CursorSlice.cpp

HEADERS += \
    ../../../lyxview/mathed/InsetMathRef.h \
    ../../../lyxview/mathed/InsetMath.h

SOURCES += \
    ../../../lyxview/mathed/InsetMathRef.cpp \
    ../../../lyxview/mathed/InsetMath.cpp

HEADERS += \
    ../../../lyxview/insets/InsetCommand.h

SOURCES += \
    ../../../lyxview/insets/InsetCommand.cpp

HEADERS += \
    ../../../lyxview/insets/InsetCommandParams.h

SOURCES += \
    ../../../lyxview/insets/InsetCommandParams.cpp

HEADERS += \
    ../../../lyxview/render/RenderPreview.h \
    ../../../lyxview/render/RenderGraphic.h \
    ../../../lyxview/render/RenderButton.h \
    ../../../lyxview/render/RenderBase.h

SOURCES += \
    ../../../lyxview/render/RenderPreview.cpp \
    ../../../lyxview/render/RenderGraphic.cpp \
    ../../../lyxview/render/RenderButton.cpp

HEADERS += \
    ../../../lyxview/output/output_xhtml.h \
    ../../../lyxview/output/output_plaintext.h \
    ../../../lyxview/output/OutputParams.h \
    ../../../lyxview/output/output_latex.h \
    ../../../lyxview/output/OutputEnums.h \
    ../../../lyxview/output/output_docbook.h \
    ../../../lyxview/output/output.h

SOURCES += \
    ../../../lyxview/output/output_xhtml.cpp \
    ../../../lyxview/output/output_plaintext.cpp \
    ../../../lyxview/output/OutputParams.cpp \
    ../../../lyxview/output/output_latex.cpp \
    ../../../lyxview/output/output_docbook.cpp \
    ../../../lyxview/output/output.cpp

HEADERS += \
    ../../../lyxview/support/shared_ptr.h

HEADERS += \
    ../../../lyxview/logic/Changes.h

SOURCES += \
    ../../../lyxview/logic/Changes.cpp

HEADERS += \
    ../../../lyxview/support/lyxtime.h

SOURCES += \
    ../../../lyxview/support/lyxtime.cpp

HEADERS += \
    ../../../lyxview/logic/Box.h

SOURCES += \
    ../../../lyxview/logic/Box.cpp

HEADERS += \
    ../../../lyxview/insets/InsetText.h \
    ../../../lyxview/insets/InsetTabular.h \
    ../../../lyxview/insets/InsetList.h \
    ../../../lyxview/insets/InsetIterator.h

SOURCES += \
    ../../../lyxview/insets/InsetText.cpp \
    ../../../lyxview/insets/InsetTabular.cpp \
    ../../../lyxview/insets/InsetList.cpp \
    ../../../lyxview/insets/InsetIterator.cpp

HEADERS += \
    ../../../lyxview/logic/Cursor.h

SOURCES += \
    ../../../lyxview/logic/Cursor.cpp

HEADERS += \
    ../../../lyxview/logic/DispatchResult.h

HEADERS += \
    ../../../lyxview/logic/Undo.h

SOURCES += \
    ../../../lyxview/logic/Undo.cpp

HEADERS += \
    ../../../lyxview/mathed/MathParser_flags.h \
    ../../../lyxview/mathed/MathParser.h

SOURCES += \
    ../../../lyxview/mathed/MathParser.cpp

HEADERS += \
    ../../../lyxview/func/FuncStatus.h \
    ../../../lyxview/func/FuncRequest.h \
    ../../../lyxview/func/FuncCode.h

SOURCES += \
    ../../../lyxview/func/FuncStatus.cpp \
    ../../../lyxview/func/FuncRequest.cpp

HEADERS += \
    ../../../lyxview/para/ParIterator.h \
    ../../../lyxview/para/ParagraphParameters.h \
    ../../../lyxview/para/ParagraphMetrics.h \
    ../../../lyxview/para/ParagraphList.h \
    ../../../lyxview/para/Paragraph.h

SOURCES += \
    ../../../lyxview/para/ParIterator.cpp \
    ../../../lyxview/para/ParagraphParameters.cpp \
    ../../../lyxview/para/ParagraphMetrics.cpp \
    ../../../lyxview/para/Paragraph.cpp

HEADERS += \
    ../../../lyxview/mathed/MathAtom.h

SOURCES += \
    ../../../lyxview/mathed/MathAtom.cpp

HEADERS += \
    ../../../lyxview/logic/Intl.h

SOURCES += \
    ../../../lyxview/logic/Intl.cpp

HEADERS += \
    ../../../lyxview/logic/Trans.h

SOURCES += \
    ../../../lyxview/logic/Trans.cpp

HEADERS += \
    ../../../lyxview/frontends/mouse_state.h

HEADERS += \
    ../../../lyxview/text/TextMetrics.h \
    ../../../lyxview/text/Text.h

SOURCES += \
    ../../../lyxview/text/TextMetrics.cpp \
    ../../../lyxview/text/Text3.cpp \
    ../../../lyxview/text/Text2.cpp \
    ../../../lyxview/text/Text.cpp

HEADERS += \
    ../../../lyxview/logic/SpellChecker.h

HEADERS += \
    ../../../lyxview/metrics/Spacing.h \
    ../../../lyxview/metrics/MetricsInfo.h \
    ../../../lyxview/metrics/Length.h

SOURCES += \
    ../../../lyxview/metrics/Spacing.cpp \
    ../../../lyxview/metrics/MetricsInfo.cpp \
    ../../../lyxview/metrics/Length.cpp

HEADERS += \
    ../../../lyxview/logic/buffer_funcs.h

SOURCES += \
    ../../../lyxview/logic/buffer_funcs.cpp

HEADERS += \
    ../../../lyxview/logic/Counters.h

SOURCES += \
    ../../../lyxview/logic/Counters.cpp

HEADERS += \
    ../../../lyxview/support/docstring_list.h

HEADERS += \
    ../../../lyxview/logic/factory.h

SOURCES += \
    ../../../lyxview/logic/factory.cpp

HEADERS += \
    ../../../lyxview/support/RandomAccessList.h

HEADERS += \
    ../../../lyxview/mathed/TextPainter.h \
    ../../../lyxview/mathed/ReplaceData.h \
    ../../../lyxview/mathed/MathSupport.h \
    ../../../lyxview/mathed/MathStream.h \
    ../../../lyxview/mathed/MathMacroTemplate.h \
    ../../../lyxview/mathed/MathMacroArgument.h \
    ../../../lyxview/mathed/MathMacro.h \
    ../../../lyxview/mathed/MathGridInfo.h \
    ../../../lyxview/mathed/MathFactory.h \
    ../../../lyxview/mathed/MathExtern.h \
    ../../../lyxview/mathed/MathData.h \
    ../../../lyxview/mathed/MathCompletionList.h \
    ../../../lyxview/mathed/MathAutoCorrect.h \
    ../../../lyxview/mathed/MacroTable.h \
    ../../../lyxview/mathed/InsetMathXYMatrix.h \
    ../../../lyxview/mathed/InsetMathXYArrow.h \
    ../../../lyxview/mathed/InsetMathXArrow.h \
    ../../../lyxview/mathed/InsetMathUnknown.h \
    ../../../lyxview/mathed/InsetMathUnderset.h \
    ../../../lyxview/mathed/InsetMathTabular.h \
    ../../../lyxview/mathed/InsetMathSymbol.h \
    ../../../lyxview/mathed/InsetMathSubstack.h \
    ../../../lyxview/mathed/InsetMathString.h \
    ../../../lyxview/mathed/InsetMathStackrel.h \
    ../../../lyxview/mathed/InsetMathSqrt.h \
    ../../../lyxview/mathed/InsetMathSplit.h \
    ../../../lyxview/mathed/InsetMathSpecialChar.h \
    ../../../lyxview/mathed/InsetMathSpace.h \
    ../../../lyxview/mathed/InsetMathSize.h \
    ../../../lyxview/mathed/InsetMathScript.h \
    ../../../lyxview/mathed/InsetMathRoot.h \
    ../../../lyxview/mathed/InsetMathPhantom.h \
    ../../../lyxview/mathed/InsetMathPar.h \
    ../../../lyxview/mathed/InsetMathOverset.h \
    ../../../lyxview/mathed/InsetMathNumber.h \
    ../../../lyxview/mathed/InsetMathNest.h \
    ../../../lyxview/mathed/InsetMathMBox.h \
    ../../../lyxview/mathed/InsetMathMatrix.h \
    ../../../lyxview/mathed/InsetMathLim.h \
    ../../../lyxview/mathed/InsetMathLefteqn.h \
    ../../../lyxview/mathed/InsetMathKern.h \
    ../../../lyxview/mathed/InsetMathHull.h \
    ../../../lyxview/mathed/InsetMathGrid.h \
    ../../../lyxview/mathed/InsetMathFrac.h \
    ../../../lyxview/mathed/InsetMathFontOld.h \
    ../../../lyxview/mathed/InsetMathFont.h \
    ../../../lyxview/mathed/InsetMathExInt.h \
    ../../../lyxview/mathed/InsetMathExFunc.h \
    ../../../lyxview/mathed/InsetMathEnv.h \
    ../../../lyxview/mathed/InsetMathEnsureMath.h \
    ../../../lyxview/mathed/InsetMathDots.h \
    ../../../lyxview/mathed/InsetMathDiff.h \
    ../../../lyxview/mathed/InsetMathDiagram.h \
    ../../../lyxview/mathed/InsetMathDelim.h \
    ../../../lyxview/mathed/InsetMathDecoration.h \
    ../../../lyxview/mathed/InsetMathComment.h \
    ../../../lyxview/mathed/InsetMathColor.h \
    ../../../lyxview/mathed/InsetMathChar.h \
    ../../../lyxview/mathed/InsetMathCases.h \
    ../../../lyxview/mathed/InsetMathCancelto.h \
    ../../../lyxview/mathed/InsetMathCancel.h \
    ../../../lyxview/mathed/InsetMathBrace.h \
    ../../../lyxview/mathed/InsetMathBox.h \
    ../../../lyxview/mathed/InsetMathBoldSymbol.h \
    ../../../lyxview/mathed/InsetMathBig.h \
    ../../../lyxview/mathed/InsetMathArray.h \
    ../../../lyxview/mathed/InsetMathAMSArray.h \
    ../../../lyxview/mathed/InsetFormulaMacro.h \
    ../../../lyxview/mathed/CommandInset.h

SOURCES += \
    ../../../lyxview/mathed/TextPainter.cpp \
    ../../../lyxview/mathed/MathSupport.cpp \
    ../../../lyxview/mathed/MathStream.cpp \
    ../../../lyxview/mathed/MathMacroTemplate.cpp \
    ../../../lyxview/mathed/MathMacroArgument.cpp \
    ../../../lyxview/mathed/MathMacro.cpp \
    ../../../lyxview/mathed/MathFactory.cpp \
    ../../../lyxview/mathed/MathExtern.cpp \
    ../../../lyxview/mathed/MathData.cpp \
    ../../../lyxview/mathed/MathAutoCorrect.cpp \
    ../../../lyxview/mathed/MacroTable.cpp \
    ../../../lyxview/mathed/InsetMathXYMatrix.cpp \
    ../../../lyxview/mathed/InsetMathXYArrow.cpp \
    ../../../lyxview/mathed/InsetMathXArrow.cpp \
    ../../../lyxview/mathed/InsetMathUnknown.cpp \
    ../../../lyxview/mathed/InsetMathUnderset.cpp \
    ../../../lyxview/mathed/InsetMathTabular.cpp \
    ../../../lyxview/mathed/InsetMathSymbol.cpp \
    ../../../lyxview/mathed/InsetMathSubstack.cpp \
    ../../../lyxview/mathed/InsetMathString.cpp \
    ../../../lyxview/mathed/InsetMathStackrel.cpp \
    ../../../lyxview/mathed/InsetMathSqrt.cpp \
    ../../../lyxview/mathed/InsetMathSplit.cpp \
    ../../../lyxview/mathed/InsetMathSpecialChar.cpp \
    ../../../lyxview/mathed/InsetMathSpace.cpp \
    ../../../lyxview/mathed/InsetMathSize.cpp \
    ../../../lyxview/mathed/InsetMathScript.cpp \
    ../../../lyxview/mathed/InsetMathRoot.cpp \
    ../../../lyxview/mathed/InsetMathPhantom.cpp \
    ../../../lyxview/mathed/InsetMathPar.cpp \
    ../../../lyxview/mathed/InsetMathOverset.cpp \
    ../../../lyxview/mathed/InsetMathNumber.cpp \
    ../../../lyxview/mathed/InsetMathNest.cpp \
    ../../../lyxview/mathed/InsetMathMBox.cpp \
    ../../../lyxview/mathed/InsetMathMatrix.cpp \
    ../../../lyxview/mathed/InsetMathLim.cpp \
    ../../../lyxview/mathed/InsetMathLefteqn.cpp \
    ../../../lyxview/mathed/InsetMathKern.cpp \
    ../../../lyxview/mathed/InsetMathHull.cpp \
    ../../../lyxview/mathed/InsetMathGrid.cpp \
    ../../../lyxview/mathed/InsetMathFrac.cpp \
    ../../../lyxview/mathed/InsetMathFontOld.cpp \
    ../../../lyxview/mathed/InsetMathFont.cpp \
    ../../../lyxview/mathed/InsetMathExInt.cpp \
    ../../../lyxview/mathed/InsetMathExFunc.cpp \
    ../../../lyxview/mathed/InsetMathEnv.cpp \
    ../../../lyxview/mathed/InsetMathEnsureMath.cpp \
    ../../../lyxview/mathed/InsetMathDots.cpp \
    ../../../lyxview/mathed/InsetMathDiff.cpp \
    ../../../lyxview/mathed/InsetMathDiagram.cpp \
    ../../../lyxview/mathed/InsetMathDelim.cpp \
    ../../../lyxview/mathed/InsetMathDecoration.cpp \
    ../../../lyxview/mathed/InsetMathComment.cpp \
    ../../../lyxview/mathed/InsetMathColor.cpp \
    ../../../lyxview/mathed/InsetMathChar.cpp \
    ../../../lyxview/mathed/InsetMathCases.cpp \
    ../../../lyxview/mathed/InsetMathCancelto.cpp \
    ../../../lyxview/mathed/InsetMathCancel.cpp \
    ../../../lyxview/mathed/InsetMathBrace.cpp \
    ../../../lyxview/mathed/InsetMathBox.cpp \
    ../../../lyxview/mathed/InsetMathBoldSymbol.cpp \
    ../../../lyxview/mathed/InsetMathBig.cpp \
    ../../../lyxview/mathed/InsetMathArray.cpp \
    ../../../lyxview/mathed/InsetMathAMSArray.cpp \
    ../../../lyxview/mathed/InsetFormulaMacro.cpp \
    ../../../lyxview/mathed/CommandInset.cpp

HEADERS += \
    ../../../lyxview/logic/IndicesList.h \
    ../../../lyxview/logic/HSpace.h \
    ../../../lyxview/logic/Graph.h \
    ../../../lyxview/logic/FloatList.h \
    ../../../lyxview/logic/Floating.h

SOURCES += \
    ../../../lyxview/logic/IndicesList.cpp \
    ../../../lyxview/logic/HSpace.cpp \
    ../../../lyxview/logic/Graph.cpp \
    ../../../lyxview/logic/FloatList.cpp \
    ../../../lyxview/logic/Floating.cpp

HEADERS += \
    ../../../lyxview/logic/Bullet.h

SOURCES += \
    ../../../lyxview/logic/Bullet.cpp

HEADERS += \
    ../../../lyxview/logic/LyXRC.h

SOURCES += \
    ../../../lyxview/logic/LyXRC.cpp
