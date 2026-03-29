import 'package:flutter/material.dart';

class HomePageAdhe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage('assets/foto_adhe.png'),
          ),
          SizedBox(height: 20),
          Text(
            'Adhe Widya',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Business Developer',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
