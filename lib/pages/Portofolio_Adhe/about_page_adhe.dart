import 'package:flutter/material.dart';

class AboutPageAdhe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/foto_adhe.png'),
          ),

          SizedBox(height: 20),

          Text(
            'Adhe Widya',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 8),

          Text(
            'Business Developer',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),

          SizedBox(height: 20),

          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.teal.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              'Saya adalah mahasiswa yang tertarik membangun solusi berbasis teknologi yang memiliki nilai pasar dan mampu berkembang secara berkelanjutan.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ),

          SizedBox(height: 25),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Skills',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 10),

          Wrap(
            spacing: 10,
            children: [
              _buildChip('Business Strategy'),
              _buildChip('Market Research'),
              _buildChip('Digital Marketing'),
              _buildChip('Product Development'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String text) {
    return Chip(
      label: Text(text),
      backgroundColor: Colors.teal.withOpacity(0.2),
    );
  }
}
