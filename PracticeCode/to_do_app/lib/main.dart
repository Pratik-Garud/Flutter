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
            title: const Text("To-do list",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontFamily: "Aptos",
                )),
            backgroundColor: const Color.fromARGB(255, 62, 149, 159),
          ),
          body: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber,
                      ),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 80,
                                child: Icon(Icons.image),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: SizedBox(
                                      height: 20,
                                      width: 255,
                                      child: Text(
                                          "Lorem Ipsum is simply setting industry",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: SizedBox(
                                      height: 80,
                                      width: 250,
                                      child: Text(
                                          "Simply dummy text of the printing and typesetting industry.Loren ipsum has been the industry standard dummy text ever since 1500",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  height: 20,
                                  width: 100,
                                  child: Text(
                                    "  10 July 2023",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  )),
                              SizedBox(
                                width: 180,
                                height: 10,
                              ),
                              SizedBox(
                                width: 30,
                                height: 20,
                                child: Icon(Icons.edit),
                              ),
                              SizedBox(
                                width: 30,
                                height: 20,
                                child: Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )),
    );
  }
}
