import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modul Ajar Informatika',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Data dummy untuk modul ajar
  final List<Map<String, String>> modules = const [
    {'title': 'Berpikir Komputasional', 'description': 'Dasar-dasar logika dan pemecahan masalah.'},
    {'title': 'Teknologi Informasi dan Komunikasi', 'description': 'Pengenalan perangkat keras dan lunak.'},
    {'title': 'Sistem Komputer', 'description': 'Cara kerja komponen dalam sistem komputer.'},
    {'title': 'Jaringan Komputer dan Internet', 'description': 'Konsep dasar jaringan dan internet.'},
    {'title': 'Analisis Data', 'description': 'Pengumpulan, pengolahan, dan visualisasi data.'},
    {'title': 'Algoritma dan Pemrograman', 'description': 'Pengenalan konsep pemrograman dasar.'},
    {'title': 'Dampak Sosial Informatika', 'description': 'Etika dan dampak teknologi dalam masyarakat.'},
    {'title': 'Praktik Lintas Bidang', 'description': 'Penerapan informatika dalam berbagai bidang.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modul Ajar Informatika'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: modules.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 2.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(modules[index]['title']!),
              subtitle: Text(modules[index]['description']!),
              onTap: () {
                // Aksi ketika item di-tap, bisa navigasi ke halaman detail
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Anda memilih ${modules[index]['title']}'),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
