import 'package:flutter/material.dart';
import 'package:flutter_cosmos/app_config.dart';
import 'package:flutter_cosmos/pages/landing/landing_page.dart';
import 'package:flutter_cosmos/pages/oobe/oobe_page.dart';

void main() {
  var configuredApp = AppConfig(
    appName: 'Flutter Cosmos',
    firstPage: LandingPage(),
    child: MyApp(),
    deviceUrl: 'http://192.168.0.39:8001/api/v2/',
  );
  runApp(configuredApp);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return MaterialApp(
      title: config.appName,
      home: config.firstPage,
      debugShowCheckedModeBanner: config.debugShowCheckedModeBanner,
    );
  }
}

