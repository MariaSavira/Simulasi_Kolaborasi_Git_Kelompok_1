import 'package:flutter/material.dart';
import 'homepage_sasa.dart';
import 'about_page_sasa.dart';
import 'project_page_sasa.dart';

class MainSasaPage extends StatefulWidget {
  @override
  _MainSasaPageState createState() => _MainSasaPageState();
}

class _MainSasaPageState extends State<MainSasaPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageSasa(),
    AboutPageSasa(),
    ProjectsPageSasa(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sasa Portfolio')),
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