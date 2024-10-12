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
            "Column Scroll",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              height: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNO-aEe3bay0Umik2g7wRaOgonAryb0KK26g&s"),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNO-aEe3bay0Umik2g7wRaOgonAryb0KK26g&s"),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNO-aEe3bay0Umik2g7wRaOgonAryb0KK26g&s"),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNO-aEe3bay0Umik2g7wRaOgonAryb0KK26g&s"),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNO-aEe3bay0Umik2g7wRaOgonAryb0KK26g&s"),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNO-aEe3bay0Umik2g7wRaOgonAryb0KK26g&s"),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNO-aEe3bay0Umik2g7wRaOgonAryb0KK26g&s"),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
