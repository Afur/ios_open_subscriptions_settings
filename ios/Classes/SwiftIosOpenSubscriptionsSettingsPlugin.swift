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

    @available(iOS 15.0, *)
    func initiateRefundRequest(for transactionId: UInt64) async {
        if let window = await UIApplication.shared.connectedScenes.first as? UIWindowScene {
                do {
                    try await StoreKit.Transaction.beginRefundRequest(for: transactionId, in: window)
                } catch {
                    
                }
            }
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if #available(iOS 15.0, *) {
            switch call.method {
            case "showCancelSubscriptionModal":
                Task {
                    await self.showCancelSubscriptionModal()
                }
            case "initiateRefundRequest":
            if let args = call.arguments as? [String: Any], 
               let transactionIdString = args["transactionId"] as? String,
               let transactionId = UInt64(transactionIdString) {
                Task {
                    await self.initiateRefundRequest(for: transactionId)
                }
            } else {
                result(FlutterError(code: "INVALID_ARGUMENTS", message: "Invalid or missing transactionId", details: nil))
            }
            default:
                result(FlutterMethodNotImplemented)
            }
        }
    }

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "ios_open_subscriptions_settings", binaryMessenger: registrar.messenger())
        let instance = SwiftIosOpenSubscriptionsSettingsPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
}
