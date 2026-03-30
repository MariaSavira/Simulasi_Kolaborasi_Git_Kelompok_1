import 'package:flutter/material.dart';

class AboutPageNajwa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/project_najwa.png'),
          ),

          SizedBox(height: 20),

          Text(
            'Najwa Kus Syafira',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 8),

          Text(
            'UI/UX Designer',
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
              'Saya berfokus pada desain antarmuka yang sederhana dan mudah digunakan, dengan prinsip desain yang mengutamakan pengalaman pengguna. Selain itu, saya juga berpengalaman dalam mengelola proyek desain dan berkolaborasi dengan tim pengembang.',
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
             _buildChip('User Interface (UI)'),
              _buildChip('User Experience (UX)'),
              _buildChip('Wireframing'),
              _buildChip('Prototyping'),
              _buildChip('Figma / Sketch'),
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
