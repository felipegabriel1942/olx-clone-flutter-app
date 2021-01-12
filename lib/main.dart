import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:olx_clone/stores/user_manager_store.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import './stores/page_store.dart';
import './screens/base/base_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(MyApp());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    'ukGCosXrcYJAj4pZeKBUaISbiPj313yMK4QdA36N',
    'https://parseapi.back4app.com/',
    clientKey: 'APAXuh2K76VwzKPSp30JWYc5H6n346tVBLWEGnYl',
    autoSendSessionId: true,
    debug: true,
    coreStore: await CoreStoreSembastImp.getInstance(password: 'olxclone'),
  );
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
  GetIt.I.registerSingleton(UserManagerStore());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OLX clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.purple,
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
        cursorColor: Colors.orange
      ),
      home: BaseScreen(),
    );
  }
}
