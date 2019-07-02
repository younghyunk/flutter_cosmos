import 'package:flutter/material.dart';
import 'package:flutter_cosmos/pages/applauncher/applauncher_page.dart';
import 'package:flutter_cosmos/pages/artwork/artwork_page.dart';
import 'package:flutter_cosmos/pages/landing/app_background.dart';
import 'package:flutter_cosmos/pages/monophoto/monophoto_page.dart';
import 'package:flutter_cosmos/pages/remotecontrol/remotecontrol_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentTab = 0;
  List<Widget> pages = [
    RemoteControlPage(),
    AppLauncherPage(),
    ArtWorkPage(),
    MonoPhotoPage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBackground(),
          Center(
            child: pages[currentTab],
          )
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentTab,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          currentTab = index;
        });
      },
      items: <BottomNavigationBarItem>[
        _bottomNavigationBarItem('Remote', Icons.keyboard),
        _bottomNavigationBarItem('Apps', Icons.apps),
        _bottomNavigationBarItem('Art', Icons.blur_linear),
        _bottomNavigationBarItem('Mono', Icons.picture_in_picture),
      ],
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      String title, IconData iconData) {
    return BottomNavigationBarItem(
      icon: Icon(
        iconData,
        color: Colors.black,
      ),
      activeIcon: Icon(
        iconData,
        color: Colors.blue,
      ),
      title: Text(title),
    );
  }
}
