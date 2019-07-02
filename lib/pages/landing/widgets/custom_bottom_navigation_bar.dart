import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final ValueChanged<int> onTab;
  final List<BottomNavigationBarItem> tabs;

  CustomBottomNavigationBar({@required this.tabs, @required this.onTab});

  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;
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
      items: widget.tabs,
    );
  }

  void _updateCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void _sendCurrentIndexToHostWidget(int index) => widget.onTab(index);
}
