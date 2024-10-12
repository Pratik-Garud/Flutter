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
  bool changeColor = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Toggle App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
              height: 200,
              width: 200,
              color: changeColor ? Colors.amber : Colors.red),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (changeColor == true) {
              changeColor = false;
            } else {
              changeColor = true;
            }
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Text("Chnage"),
        ),
      ),
    );
  }
}
