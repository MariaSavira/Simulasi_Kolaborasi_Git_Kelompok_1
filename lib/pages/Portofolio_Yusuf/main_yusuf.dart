import 'package:flutter/material.dart';
import 'homepage_yusuf.dart';
import 'about_page_yusuf.dart';
import 'project_page_yusuf.dart';

class MainYusufPage extends StatefulWidget {
  @override
  _MainYusufPageState createState() => _MainYusufPageState();
}

class _MainYusufPageState extends State<MainYusufPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageYusuf(),
    AboutPageYusuf(),
    ProjectsPageYusuf(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Yusuf Portfolio')),
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