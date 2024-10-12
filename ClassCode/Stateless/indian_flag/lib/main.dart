import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Indian flag"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 800,
                width: 10,
                color: Colors.black,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 250,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    color: Colors.white,
                    child: Image.network(
                        "https://tse1.mm.bing.net/th?id=OIP.3nftDdnLbMop6GQS78hK7gHaHa&pid=Api&P=0&h=220"),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
