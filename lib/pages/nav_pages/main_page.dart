import 'package:flutter/material.dart';
import 'package:travel_app/pages/nav_pages/bar_item_page.dart';
import 'package:travel_app/pages/nav_pages/home_page.dart';
import 'package:travel_app/pages/nav_pages/my_page.dart';
import 'package:travel_app/pages/nav_pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];

  int _currentIndex = 0;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp), label: 'Bar'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My'),
        ],
      ),
    );
  }
}
