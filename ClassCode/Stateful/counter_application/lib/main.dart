import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text("$count"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
