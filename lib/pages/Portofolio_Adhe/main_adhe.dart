import 'package:flutter/material.dart';
import 'homepage_adhe.dart';
import 'about_page_adhe.dart';
import 'project_page_adhe.dart';

class MainAdhePage extends StatefulWidget {
  @override
  _MainAdhePageState createState() => _MainAdhePageState();
}

class _MainAdhePageState extends State<MainAdhePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageAdhe(),
    AboutPageAdhe(),
    ProjectsPageAdhe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adhe Portfolio')),
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