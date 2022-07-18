# app_settings

A Flutter plugin for opening iOS phone settings subscriptions from an app.

## Getting Started

```dart
dependencies:
  flutter:
    sdk: flutter
  ios_open_subscriptions_settings: 0.0.4
```

Next, import 'ios_open_subscriptions_settings.dart' into your dart code.

```dart
import 'package:ios_open_subscriptions_settings/ios_open_subscriptions_settings.dart';
```

## Platform Specifics
The following setting options available on both iOS :
- openSubscriptionsSettings

## Example
Example implementation using a raised button 'onPressed' event.

```dart
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('iOS Open Subscriptions Settings'),
        ),
        body: const ElevatedButton(
          onPressed: IosOpenSubscriptionsSettings.openSubscriptionsSettings,
          child: Text('Open Subscriptions Settings'),
        )
    ),
  );
}
```
