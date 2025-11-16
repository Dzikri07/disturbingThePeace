import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map<String, String> item;

  const DetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item['title']!),
      ),
      body: Column(
        children: [
          Image.network(
            item['image']!,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            item['title']!,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Ini adalah halaman detail. "
              "Tambahkan deskripsi, info lokasi atau apa pun di sini.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
