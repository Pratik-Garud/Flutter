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
          title: const Text("Images Demo"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(height: 250,width: 200,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmlkP9nAfQo4c_FCcTZjVvvBvxPy5lY__YfiNantvCdNarbWTKby2mcfMShwN3vQLb0HE&usqp=CAU")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(height: 250,width: 200,child: Image.network("https://img.wallscloud.net/uploads/thumb/2417915942/delorean-1-57344-1024x576-MM-80.webp")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(height: 250,width: 200,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8SdsR9K6qNNxkExuSRl5RWtaas2EIeFLl8A&s")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(height: 250,width: 200,child: Image.network("https://backiee.com/static/wallpapers/560x315/233232.jpg")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(height: 250,width: 200,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8SdsR9K6qNNxkExuSRl5RWtaas2EIeFLl8A&s")),
                ),
                ]
              ),
        ),
      ),
    );
  }
}
