#import "DimLoadingDialogPlugin.h"
#if __has_include(<dim_loading_dialog/dim_loading_dialog-Swift.h>)
#import <dim_loading_dialog/dim_loading_dialog-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "dim_loading_dialog-Swift.h"
#endif

@implementation DimLoadingDialogPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDimLoadingDialogPlugin registerWithRegistrar:registrar];
}
@end
