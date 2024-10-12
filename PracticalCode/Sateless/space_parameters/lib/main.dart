import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Demo",
            style: TextStyle(
              height: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
