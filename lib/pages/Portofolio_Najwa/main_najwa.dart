import 'package:flutter/material.dart';
import 'homepage_najwa.dart';
import 'about_page_najwa.dart';
import 'project_page_najwa.dart';

class MainNajwaPage extends StatefulWidget {
  @override
  _MainNajwaPageState createState() => _MainNajwaPageState();
}

class _MainNajwaPageState extends State<MainNajwaPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageNajwa(),
    AboutPageNajwa(),
    ProjectsPageNajwa(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Najwa Portfolio')),
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