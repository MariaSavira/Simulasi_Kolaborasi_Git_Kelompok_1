import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Flutter',
      home: Scaffold(
        appBar: AppBar(title: const Text('Tugas Flutter')),
        body: const Center(
          child: Text(
            'Feby Rahmawati Ahmaad - 244107060139',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
