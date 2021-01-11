import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

void main() async {
  runApp(MyApp());

  await Parse().initialize(
    'ukGCosXrcYJAj4pZeKBUaISbiPj313yMK4QdA36N',
    'https://parseapi.back4app.com/',
    clientKey: 'APAXuh2K76VwzKPSp30JWYc5H6n346tVBLWEGnYl',
    autoSendSessionId: true,
    debug: true
  );

  // final category = ParseObject('Categories')
  // ..set<String>('Title', 'Meias')
  // ..set<int>('Position', 1);

  // final response = await category.save();

  // print(response.success);

  // final category = ParseObject('Categories')
  //   ..objectId = 'zAQTz0lr9l'
  //   ..set<String>('Title', 'Calça');

  // final response = await category.save();

  // print(response.success);

  // final category = ParseObject('Categories')
  // ..objectId = '4m047rc6mF';

  // category.delete();

  // final response = await ParseObject('Categories').getObject('zAQTz0lr9l');

  // if (response.success) {
  //   print(response.result);
  // }

  // final response = await ParseObject('Categories').getAll();

  // if (response.success) {
  //   for (final object in response.result ){
  //     print(object);
  //   }
  // }

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(),
    );
  }
}
