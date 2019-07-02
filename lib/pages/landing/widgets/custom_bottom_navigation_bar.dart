import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final ValueChanged<int> onTab;

  CustomBottomNavigationBar({@required this.onTab});

  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  final List<BottomNavigationBarItem> tabs = [
    _buildBottomNavigationBarItem('Remote', Icons.keyboard),
    _buildBottomNavigationBarItem('Apps', Icons.apps),
    _buildBottomNavigationBarItem('Art', Icons.blur_linear),
    _buildBottomNavigationBarItem('Mono', Icons.picture_in_picture),
  ];

  _BottomNavigationBarState();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        _updateCurrentIndex(index);
        _sendCurrentIndexToHostWidget(index);
      },
      items: tabs,
    );
  }

  void _updateCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void _sendCurrentIndexToHostWidget(int index) => widget.onTab(index);
}

BottomNavigationBarItem _buildBottomNavigationBarItem(
    String title, IconData iconData) {
  return BottomNavigationBarItem(
    title: Text(title),
    icon: Icon(iconData, color: Colors.black),
    activeIcon: Icon(iconData, color: Colors.blue),
  );
}
