import 'package:flutter/material.dart';

class AboutPageSasa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),

          SizedBox(height: 20),

          Text(
            'Maria Savira',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 8),

          Text(
            'Aspiring Developer',
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
              'Saya adalah mahasiswa yang tertarik pada pengembangan aplikasi, AI, dan digital marketing. Saya senang membangun solusi yang bermanfaat bagi masyarakat.',
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
              _buildChip('Flutter'),
              _buildChip('AI'),
              _buildChip('Digital Marketing'),
              _buildChip('UI/UX'),
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
