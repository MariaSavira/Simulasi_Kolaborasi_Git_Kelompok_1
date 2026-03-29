import 'package:flutter/material.dart';
import '../Portofolio_Sasa/main_sasa.dart';
import '../Portofolio_Najwa/main_najwa.dart';

class LandingPage extends StatelessWidget {
  final List<String> members = [
    'Adhe Widya Galih Kartika',
    'Feby Rahmawati Ahmad',
    'Maria Savira',
    'Najwa Kus Syafira',
    'Muhammad Yusuf'
  ];

  final Map<String, Widget> memberPages = {
    'Maria Savira': MainSasaPage(),
    'Najwa Kus Syafira': MainNajwaPage(),
    // tambahin kesini misal:
    // 'Feby Rahmawati Ahmad': MainFebyPage(),
  };

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Portfolio'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: members.length,
        itemBuilder: (context, index) {
          final name = members[index];

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              leading: CircleAvatar(child: Text(name[0])),
              title: Text(name),
              trailing: Icon(Icons.arrow_forward_ios),

              onTap: () {
                if (memberPages.containsKey(name)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => memberPages[name]!,
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}