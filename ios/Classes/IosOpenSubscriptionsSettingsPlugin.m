#import "IosOpenSubscriptionsSettingsPlugin.h"
#if __has_include(<ios_open_subscriptions_settings/ios_open_subscriptions_settings-Swift.h>)
#import <ios_open_subscriptions_settings/ios_open_subscriptions_settings-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ios_open_subscriptions_settings-Swift.h"
#endif

@implementation IosOpenSubscriptionsSettingsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIosOpenSubscriptionsSettingsPlugin registerWithRegistrar:registrar];
}
@end
