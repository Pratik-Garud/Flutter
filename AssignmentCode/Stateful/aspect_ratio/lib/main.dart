import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override 
  State createState()=>_MainAppState();
}
class _MainAppState extends State{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
        title: const Text("Aspect Ratio Demo",
        style: TextStyle(fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.blue,
       ),
       body: Center(
         child: Container(
          height: 300,
          width: 300,
          color: Colors.amber,
          child: Image.network("https://www.nilsvoelker.com/content/variationsOnPi/1200x1200_96dpi/04.jpg"),
         ),
       ),
      ),
    );
  }
}
