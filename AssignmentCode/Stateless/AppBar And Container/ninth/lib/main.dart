import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Demo"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 300,
            width: 300,

          ),
        ),
      ),
    );
  }
}
