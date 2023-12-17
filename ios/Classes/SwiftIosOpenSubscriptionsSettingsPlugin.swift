import Flutter
import UIKit
import StoreKit

public class SwiftIosOpenSubscriptionsSettingsPlugin: NSObject, FlutterPlugin {
  @available(iOS 15.0, *)
    func showCancelSubscriptionModal() async {
        if #available(iOS 15.0, *) {
            if let window = await UIApplication.shared.connectedScenes.first as? UIWindowScene {
                do {
                    try await AppStore.showManageSubscriptions(in: window)
                } catch {
                    
                }
            }
        }
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if #available(iOS 15.0, *) {
            Task {
                await self.showCancelSubscriptionModal()
            }
        }
    }

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ios_open_subscriptions_settings", binaryMessenger: registrar.messenger())
    let instance = SwiftIosOpenSubscriptionsSettingsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
}