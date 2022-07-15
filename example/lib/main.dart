import 'package:flutter/material.dart';
import 'package:ios_open_subscriptions_settings/ios_open_subscriptions_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('OS Open Subscriptions Settings'),
        ),
        body: const ElevatedButton(
          onPressed: IosOpenSubscriptionsSettings.openSubscriptionsSettings,
          child: Text('Open Subscriptions Settings'),
        )
      ),
    );
  }
}
