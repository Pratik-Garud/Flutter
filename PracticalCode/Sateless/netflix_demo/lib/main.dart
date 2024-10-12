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
            "Netflix Demo",
            style: TextStyle(
              height: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Action Movies",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        height: 3),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          height: 200,
                          width: 150,
                          child: Image.network(
                              "https://m.media-amazon.com/images/M/MV5BMTMyODQxODktZTgzZC00YTQ0LWJjZWYtZTgzOTI5MmI3NGViXkEyXkFqcGc@._V1_.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          height: 200,
                          width: 150,
                          child: Image.network(
                              "https://m.media-amazon.com/images/M/MV5BMTMyODQxODktZTgzZC00YTQ0LWJjZWYtZTgzOTI5MmI3NGViXkEyXkFqcGc@._V1_.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          height: 200,
                          width: 150,
                          child: Image.network(
                              "https://m.media-amazon.com/images/M/MV5BMTMyODQxODktZTgzZC00YTQ0LWJjZWYtZTgzOTI5MmI3NGViXkEyXkFqcGc@._V1_.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          height: 200,
                          width: 150,
                          child: Image.network(
                              "https://m.media-amazon.com/images/M/MV5BMTMyODQxODktZTgzZC00YTQ0LWJjZWYtZTgzOTI5MmI3NGViXkEyXkFqcGc@._V1_.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          height: 200,
                          width: 150,
                          child: Image.network(
                              "https://m.media-amazon.com/images/M/MV5BMTMyODQxODktZTgzZC00YTQ0LWJjZWYtZTgzOTI5MmI3NGViXkEyXkFqcGc@._V1_.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          height: 200,
                          width: 150,
                          child: Image.network(
                              "https://m.media-amazon.com/images/M/MV5BMTMyODQxODktZTgzZC00YTQ0LWJjZWYtZTgzOTI5MmI3NGViXkEyXkFqcGc@._V1_.jpg"),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
