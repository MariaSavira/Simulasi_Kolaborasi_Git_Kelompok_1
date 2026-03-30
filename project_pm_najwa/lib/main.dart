import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run".
        // You'll see the application has a purple toolbar.
        // Then try changing the seedColor below and hot reload.
        //
        // Notice that the counter didn't reset during reload.
        // This works for code too, not just values.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Najwa Kus Syafira'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application.
  // It is stateful, meaning it has a State object.

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called.

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              'Najwa Kus Syafira - 244107060034',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            // Tombol menuju halaman portofolio
            ElevatedButton(
              child: Text("Lihat Portofolio"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PortofolioPage(),
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
// Halaman Portofolio

class PortofolioPage extends StatelessWidget {
  const PortofolioPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Portofolio Najwa"),
      ),

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Nama: Najwa Kus Syafira",
              style: TextStyle(fontSize: 22),
            ),

            Text(
              "NIM: 244107060034",
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 20),

            Text("Skill:"),
            Text("- UI Design"),

          ],
        ),
      ),

    );
  }
}