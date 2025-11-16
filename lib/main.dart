import 'package:flutter/material.dart';
import 'list_view_widget.dart';
import 'grid_view_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Katalog Wisata"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: "List View"),
              Tab(icon: Icon(Icons.grid_on), text: "Grid View"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ListViewWidget(),
            GridViewWidget(),
          ],
        ),
      ),
    );
  }
}
