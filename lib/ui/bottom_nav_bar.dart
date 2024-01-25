import 'package:flutter/material.dart';
import '../pages/search_page.dart';
import '../config/config.dart';
import '../pages/my_library_page.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Text('Main Page'),
    SearchPage(),
    MyLibraryPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            backgroundColor: PRIMARY_COLOR,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Main',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: 'My Lib',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            selectedItemColor: Color(0xFFFFFFFF),
            unselectedItemColor: Color(0xFFA6A6A6),
          ),
        ));
  }
}
