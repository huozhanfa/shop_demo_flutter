#import "AsrPlugin.h"
#if __has_include(<asr_plugin/asr_plugin-Swift.h>)
#import <asr_plugin/asr_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "asr_plugin-Swift.h"
#endif

@implementation AsrPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAsrPlugin registerWithRegistrar:registrar];
}
@end
