import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPageSasa extends StatelessWidget {
  final List<Map<String, dynamic>> projects = [
    {
      'title': 'Mental Health App',
      'desc': 'Aplikasi mobile untuk mendukung kesehatan mental pengguna.',
      'image': 'assets/project1.png',
      'link': 'https://github.com/MariaSavira/Moodly-PBL-SMT-4',
    },
    {
      'title': 'Furrfect Website',
      'desc': 'Website petshop dengan fitur lengkap.',
      'image': 'assets/project2.png',
      'link': 'https://github.com/',
    },
    {
      'title': 'Website Laboratorium Business Analytics',
      'desc': 'Project PBL Semester 3 Jurusan Teknologi Indormasi',
      'image': 'assets/project3.png',
      'link': 'https://github.com/MariaSavira/PBL-SMT-3'
    }
  ];

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(12),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];

        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
          margin: EdgeInsets.symmetric(vertical: 10),
          child: ExpansionTile(
            childrenPadding: EdgeInsets.all(12),
            leading: Icon(Icons.work, color: Colors.teal),
            title: Text(
              project['title'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(project['desc']),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  project['image'],
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 10),

              ElevatedButton.icon(
                onPressed: () => _launchURL(project['link']),
                icon: Icon(Icons.link),
                label: Text('View Project'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}