import 'dart:async';
import 'package:flutter/services.dart';

class IosOpenSubscriptionsSettings {
  // Static constant variable to initialize MethodChannel of 'ios_open_subscriptions_settings'.
  static const MethodChannel _channel = MethodChannel('ios_open_subscriptions_settings');

  /// Opening subscriptions settings
  static Future<void> openSubscriptionsSettings({bool asAnotherTask = false}) async {
    _channel.invokeMethod('openSettingsSubscriptions', {
      'asAnotherTask': asAnotherTask,
    });
  }
}


