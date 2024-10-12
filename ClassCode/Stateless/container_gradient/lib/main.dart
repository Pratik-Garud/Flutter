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
          title: const Text(
            "Container Gradient",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              height: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.cyan, Colors.pink],
              ),
            ),
            child: const Text(
              "Hello",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}
