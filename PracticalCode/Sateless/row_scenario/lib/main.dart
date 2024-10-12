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
            "Row Demo",
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
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
