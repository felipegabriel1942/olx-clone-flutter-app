import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

import './screens/base/base_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  runApp(MyApp());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    'ukGCosXrcYJAj4pZeKBUaISbiPj313yMK4QdA36N',
    'https://parseapi.back4app.com/',
    clientKey: 'APAXuh2K76VwzKPSp30JWYc5H6n346tVBLWEGnYl',
    autoSendSessionId: true,
    debug: true,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OLX clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BaseScreen(),
    );
  }
}
