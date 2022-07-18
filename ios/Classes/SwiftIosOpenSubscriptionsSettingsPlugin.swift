import Flutter
import UIKit

/// Swift app settings plugin with method channel call handler.
public class SwiftIosOpenSubscriptionsSettingsPlugin: NSObject, FlutterPlugin {
  private func openSettingsSubscriptions() {
      if let url = URL(string: "itms-apps://apps.apple.com/account/subscriptions") {
          if #available(iOS 10.0, *) {
              UIApplication.shared.open(url, options: [:], completionHandler: nil)
          } else {
              UIApplication.shared.openURL(url)
          }
      }
  }

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ios_open_subscriptions_settings", binaryMessenger: registrar.messenger())
    let instance = SwiftIosOpenSubscriptionsSettingsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      openSettingsSubscriptions()
  }
}
