import 'package:flutter/material.dart';
import 'package:flutter_cosmos/pages/applauncher/applauncher_page.dart';
import 'package:flutter_cosmos/pages/artwork/artwork_page.dart';
import 'package:flutter_cosmos/pages/landing/widgets/app_background.dart';
import 'package:flutter_cosmos/pages/landing/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_cosmos/pages/monophoto/monophoto_page.dart';
import 'package:flutter_cosmos/pages/remotecontrol/remotecontrol_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentTab = 0;

  final List<Widget> pages = [
    RemoteControlPage(),
    AppLauncherPage(),
    ArtWorkPage(),
    MonoPhotoPage(),
  ];

  final List<BottomNavigationBarItem> tabs = [
    _buildBottomNavigationBarItem('Remote', Icons.keyboard),
    _buildBottomNavigationBarItem('Apps', Icons.apps),
    _buildBottomNavigationBarItem('Art', Icons.blur_linear),
    _buildBottomNavigationBarItem('Mono', Icons.picture_in_picture),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[AppBackground(), Center(child: _getCurrentPage())],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(tabs: tabs, onTab: _updateCurrentTab),
    );
  }

  void _updateCurrentTab(index) {
    setState(() {
      currentTab = index;
    });
  }

  Widget _getCurrentPage() => pages[currentTab];
}

BottomNavigationBarItem _buildBottomNavigationBarItem(
    String title, IconData iconData) {
  return BottomNavigationBarItem(
    title: Text(title),
    icon: Icon(iconData, color: Colors.black),
    activeIcon: Icon(iconData, color: Colors.blue),
  );
}