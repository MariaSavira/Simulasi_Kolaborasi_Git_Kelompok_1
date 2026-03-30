import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPageAdhe extends StatelessWidget {
  final List<Map<String, dynamic>> projects = [
    {
      'title': 'Jasa Pembuatan Website',
      'desc': 'Menyediakan jasa pembuatan website profesional untuk berbagai kebutuhan bisnis.',
      'image': 'assets/project_Adhe_1.png',
      'link': 'https://github.com/adhe574/UTS_pemrogramanWeb',
    },
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