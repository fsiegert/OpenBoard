######################################################################
# Automatically generated by qmake (2.01a) Fri Mar 13 16:41:05 2009
######################################################################

TEMPLATE = lib
CONFIG   += staticlib debug_and_release

BUILD_DIR = build
CONFIG(debug, debug|release) {
    BUILD_DIR = $$BUILD_DIR/debug
    mac: TARGET = $$join(TARGET,,,_debug)
    win32: TARGET = $$join(TARGET,,d)
}
CONFIG(release, debug|release) {
    BUILD_DIR = $$BUILD_DIR/release
    CONFIG += warn_off
}

BREAKPAD_DIR   = "$$[UNIBOARD_DIR]/thirdparty/google-breakpad/google-breakpad-r786"
headersHandlerMac.path   = "$$BREAKPAD_DIR/include/google_breakpad/client/mac/handler"
headersHandlerMac.files  = "src/client/mac/handler/*.h"

headersHandlerWin.path   = "$$BREAKPAD_DIR/include/google_breakpad/client/windows/handler"
headersHandlerWin.files  = "src/client/windows/handler/*.h"

headersClient.path   = "$$BREAKPAD_DIR/include/google_breakpad/client"
headersClient.files  = "src/client/*.h"

headersClientCommonWin.path   = "$$BREAKPAD_DIR/include/google_breakpad/client/windows/common"
headersClientCommonWin.files  = "src/client/windows/common/*.h"

headersClientCrashGenerationWin.path   = "$$BREAKPAD_DIR/include/google_breakpad/client/windows/crash_generation"
headersClientCrashGenerationWin.files  = "src/client/windows/crash_generation/*.h"

headersClientSenderWin.path   = "$$BREAKPAD_DIR/include/google_breakpad/client/windows/sender"
headersClientSenderWin.files  = "src/client/windows/sender/*.h"

headersCommon.path   = "$$BREAKPAD_DIR/include/google_breakpad/common"
headersCommon.files  = "src/common/*.h"

headersCommonWin.path   = "$$BREAKPAD_DIR/include/google_breakpad/common/windows"
headersCommonWin.files  = "src/common/windows/*.h"

headersGbCommon.path   = "$$BREAKPAD_DIR/include/google_breakpad/google_breakpad/common"
headersGbCommon.files  = "src/google_breakpad/common/*.h"

headersGbProcessor.path   = "$$BREAKPAD_DIR/include/google_breakpad/google_breakpad/processor"
headersGbProcessor.files  = "src/google_breakpad/processor/*.h"

headersProcessor.path   = "$$BREAKPAD_DIR/include/google_breakpad/processor"
headersProcessor.files  = "src/processor/*.h"

INSTALLS += "headersHandlerMac" "headersHandlerWin" "headersClient" "headersClientCommonWin" "headersCommonWin"\
"headersClientCrashGenerationWin" "headersClientSenderWin" "headersCommon" "headersGbCommon" "headersGbProcessor" "headersProcessor"

GOOGLE_BREAKPAD_PATH=google-breakpad-r786


INCLUDEPATH += $$GOOGLE_BREAKPAD_PATH/src \
               $$GOOGLE_BREAKPAD_PATH/src/client \
               $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common \
               $$GOOGLE_BREAKPAD_PATH/src/common \
               $$GOOGLE_BREAKPAD_PATH/src/processor \
               $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor

# Input
HEADERS += $$GOOGLE_BREAKPAD_PATH/src/client/minidump_file_writer-inl.h \
           $$GOOGLE_BREAKPAD_PATH/src/client/minidump_file_writer.h \
           $$GOOGLE_BREAKPAD_PATH/src/common/convert_UTF.h \
           $$GOOGLE_BREAKPAD_PATH/src/common/md5.h \
           $$GOOGLE_BREAKPAD_PATH/src/common/string_conversion.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/address_map-inl.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/address_map.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/basic_code_module.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/basic_code_modules.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/contained_range_map-inl.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/contained_range_map.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/linked_ptr.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/logging.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/pathname_stripper.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/postfix_evaluator-inl.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/postfix_evaluator.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/range_map-inl.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/range_map.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/scoped_ptr.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/simple_symbol_supplier.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/stackwalker_amd64.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/stackwalker_ppc.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/stackwalker_sparc.h \
           $$GOOGLE_BREAKPAD_PATH/src/processor/stackwalker_x86.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/breakpad_types.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/minidump_cpu_amd64.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/minidump_cpu_ppc.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/minidump_cpu_ppc64.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/minidump_cpu_sparc.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/minidump_cpu_x86.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/minidump_exception_linux.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/minidump_exception_mac.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/minidump_exception_solaris.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/minidump_exception_win32.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/minidump_format.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/common/minidump_size.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/basic_source_line_resolver.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/call_stack.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/code_module.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/code_modules.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/memory_region.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/minidump.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/minidump_processor.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/process_state.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/source_line_resolver_interface.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/stack_frame.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/stack_frame_cpu.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/stackwalker.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/symbol_supplier.h \
           $$GOOGLE_BREAKPAD_PATH/src/google_breakpad/processor/system_info.h


win32 {

	DESTDIR = "lib/win32"
	OBJECTS_DIR = $$BUILD_DIR/objects
    	MOC_DIR     = $$BUILD_DIR/moc
    	RCC_DIR     = $$BUILD_DIR/rcc
    	UI_DIR      = $$BUILD_DIR/ui

	INCLUDEPATH += "C:\Program Files\Microsoft Visual Studio 9.0\DIA SDK\include"

	HEADERS += $$GOOGLE_BREAKPAD_PATH/src/common/windows/guid_string.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/windows/http_upload.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/windows/pdb_source_line_writer.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/windows/string_utils-inl.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/common/auto_critical_section.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/common/ipc_protocol.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/crash_generation/client_info.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/crash_generation/crash_generation_client.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/crash_generation/crash_generation_server.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/crash_generation/minidump_generator.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/handler/exception_handler.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/sender/crash_report_sender.h \
	           $$GOOGLE_BREAKPAD_PATH/src/tools/windows/converter/ms_symbol_server_converter.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/tests/crash_generation_app/abstract_class.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/tests/crash_generation_app/crash_generation_app.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/tests/crash_generation_app/precompile.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/tests/crash_generation_app/resource.h

	SOURCES += $$GOOGLE_BREAKPAD_PATH/src/common/windows/guid_string.cc \
	           $$GOOGLE_BREAKPAD_PATH/src/common/windows/http_upload.cc \
	           $$GOOGLE_BREAKPAD_PATH/src/common/windows/pdb_source_line_writer.cc \
	           $$GOOGLE_BREAKPAD_PATH/src/common/windows/string_utils.cc \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/crash_generation/client_info.cc \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/crash_generation/crash_generation_client.cc \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/crash_generation/crash_generation_server.cc \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/crash_generation/minidump_generator.cc \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/handler/exception_handler.cc \
	           $$GOOGLE_BREAKPAD_PATH/src/client/windows/sender/crash_report_sender.cc \
	           $$GOOGLE_BREAKPAD_PATH/src/tools/windows/dump_syms/dump_syms.cc \
	           $$GOOGLE_BREAKPAD_PATH/src/tools/windows/symupload/symupload.cc
}

macx {

	DESTDIR = "lib/macx"
	OBJECTS_DIR  = $$BUILD_DIR

    	CONFIG += x86 ppc
    	QMAKE_MACOSX_DEPLOYMENT_TARGET = "10.4"

	INCLUDEPATH += $$GOOGLE_BREAKPAD_PATH/src/common/mac \
	               $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler \
	               $$GOOGLE_BREAKPAD_PATH/src/common/mac/dwarf

	HEADERS += $$GOOGLE_BREAKPAD_PATH/src/common/mac/dump_syms.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/file_id.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/HTTPMultipartUpload.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/macho_id.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/macho_utilities.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/macho_walker.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/string_utilities.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/breakpad_exc_server.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/breakpad_nlist_64.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/dynamic_images.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/exception_handler.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/minidump_generator.h \
	           $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/protected_memory_allocator.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/dwarf/bytereader-inl.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/dwarf/bytereader.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/dwarf/dwarf2enums.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/dwarf/dwarf2reader.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/dwarf/functioninfo.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/dwarf/line_state_machine.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/dwarf/types.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/GTMDefines.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMCarbonEvent.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMDelegatingTableColumn.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMHotKeyTextField.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMLargeTypeWindow.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMLinearRGBShading.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMLoginItems.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMNSBezierPath+CGPath.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMNSBezierPath+RoundRect.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMNSBezierPath+Shading.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMNSColor+Luminance.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMNSImage+Scaling.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMNSWorkspace+Running.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMShading.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/AppKit/GTMTheme.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/DebugUtils/GTMDebugSelectorValidation.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/DebugUtils/GTMDebugThreadValidation.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/DebugUtils/GTMMethodCheck.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMAbstractDOListener.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMBase64.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMCalculatedRange.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMExceptionalInlines.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMFileSystemKQueue.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMFourCharCode.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMGarbageCollection.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMGeometryUtils.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMHTTPFetcher.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMHTTPServer.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMLightweightProxy.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMLogger+ASL.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMLogger.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMLoggerRingBufferWriter.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSAppleEventDescriptor+Foundation.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSAppleEventDescriptor+Handler.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSAppleScript+Handler.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSArray+Merge.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSData+zlib.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSDictionary+URLArguments.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSEnumerator+Filter.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSFileManager+Carbon.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSFileManager+Path.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSObject+KeyValueObserving.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSString+FindFolder.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSString+HTML.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSString+Replace.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSString+URLArguments.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMNSString+XML.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMObjC2Runtime.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMObjectSingleton.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMPath.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMProgressMonitorInputStream.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMRegex.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMScriptRunner.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMSignalHandler.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMSQLite.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMStackTrace.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMSystemVersion.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMTransientRootPortProxy.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMTransientRootProxy.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/Foundation/GTMValidatingContainers.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/iPhone/GTMABAddressBook.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/iPhone/GTMUIFont+LineHeight.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMAppKit+UnitTesting.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMCALayer+UnitTesting.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMIPhoneUnitTestDelegate.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMNSObject+BindingUnitTesting.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMNSObject+UnitTesting.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMSenTestCase.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMTestHTTPServer.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMTestTimer.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMUIKit+UnitTesting.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMUnitTestDevLog.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMUnitTestingTest.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/UnitTesting/GTMUnitTestingUtilities.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/SpotlightPlugins/AppleScript/PluginID.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/SpotlightPlugins/InterfaceBuilder/PluginID.h \
	           $$GOOGLE_BREAKPAD_PATH/src/common/mac/externals/google-toolbox-for-mac/SpotlightPlugins/XcodeProject/PluginID.h

	SOURCES += $$GOOGLE_BREAKPAD_PATH/src/common/convert_UTF.c \
			   $$GOOGLE_BREAKPAD_PATH/src/common/md5.c \
			   $$GOOGLE_BREAKPAD_PATH/src/common/string_conversion.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/client/minidump_file_writer.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/client/minidump_file_writer_unittest.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/address_map_unittest.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/basic_code_modules.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/basic_source_line_resolver.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/basic_source_line_resolver_unittest.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/call_stack.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/contained_range_map_unittest.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/logging.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/minidump.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/minidump_dump.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/minidump_processor.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/minidump_processor_unittest.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/minidump_stackwalk.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/pathname_stripper.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/pathname_stripper_unittest.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/postfix_evaluator_unittest.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/process_state.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/range_map_unittest.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/simple_symbol_supplier.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/stackwalker.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/stackwalker_amd64.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/stackwalker_ppc.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/stackwalker_selftest.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/stackwalker_sparc.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/processor/stackwalker_x86.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/common/mac/file_id.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/common/mac/macho_id.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/common/mac/macho_utilities.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/common/mac/macho_walker.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/common/mac/string_utilities.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/breakpad_exc_server.c \
			   $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/breakpad_nlist_64.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/dynamic_images.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/exception_handler.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/exception_handler_test.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/minidump_generator.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/minidump_generator_test.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/client/mac/handler/protected_memory_allocator.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/common/mac/dwarf/bytereader.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/common/mac/dwarf/dwarf2reader.cc \
			   $$GOOGLE_BREAKPAD_PATH/src/common/mac/dwarf/functioninfo.cc
}

