import 'package:flutter/material.dart';

class HomePageYusuf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage('assets/foto_profil_yusuf.jpeg'),
          ),
          SizedBox(height: 20),
          Text(
            'Muhammad Yusuf',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Sosial Media Spesialis',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
