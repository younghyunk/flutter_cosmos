import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final ValueChanged<int> onTab;

  CustomBottomNavigationBar({@required this.onTab});

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
        widget.onTab(index);
      },
      items: <BottomNavigationBarItem>[
        _bottomNavigationBarItem('Remote', Icons.keyboard),
        _bottomNavigationBarItem('Apps', Icons.apps),
        _bottomNavigationBarItem('Art', Icons.blur_linear),
        _bottomNavigationBarItem('Mono', Icons.picture_in_picture),
      ],
    );
  }

  void _updateCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
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
