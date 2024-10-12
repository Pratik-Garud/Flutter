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
            "Static View List",
            style: TextStyle(
              height: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Image.network(
                "https://cdn.pixabay.com/photo/2017/10/10/07/48/hills-2836301_640.jpg"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "bhari",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Button Pressed");
              },
              child: Container(
                height: 20,
                color: Colors.amber,
                child: const Text("Press Me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
