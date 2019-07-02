import 'package:flutter/cupertino.dart';

class AppConfig extends InheritedWidget {
  AppConfig({
    @required this.appName,
    @required this.firstPage,
    @required Widget child,
    this.debugShowCheckedModeBanner = false,
    this.deviceUrl = '',
  }) : super(child: child);

  final String appName;

  /// OobePage or LandingPage
  final Widget firstPage;

  final bool debugShowCheckedModeBanner;

  /// only for testing
  final String deviceUrl;

  static AppConfig of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(AppConfig);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
