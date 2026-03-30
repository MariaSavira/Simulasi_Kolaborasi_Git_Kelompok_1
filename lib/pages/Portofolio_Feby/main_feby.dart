import 'package:flutter/material.dart';
import 'homepage_feby.dart';
import 'about_page_feby.dart';
import 'project_page_feby.dart';

class MainFebyPage extends StatefulWidget {
  @override
  _MainFebyPageState createState() => _MainFebyPageState();
}

class _MainFebyPageState extends State<MainFebyPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageFeby(),
    AboutPageFeby(),
    ProjectsPageFeby(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feby Portfolio')),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Projects'),
        ],
      ),
    );
  }
}