import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? myName;
  String? myPass;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextFiled Demo",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(children: [
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: nameController,
            style: const TextStyle(
              fontSize: 25,
            ),
            obscureText: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Name",
              hintStyle: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordController,
            style: const TextStyle(
              fontSize: 20,
            ),
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.visibility),
              hintText: "Enter Password",
              hintStyle: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            onChanged: (String val) {
              print("Value:$val");
            },
            onEditingComplete: () {
              print("Editing Completed");
            },
            onSubmitted: (value) {
              print("Value Submitted: $value");
            },
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              print("add Data");
              myName = nameController.text;
              print("my Name: $myName");
              setState(() {});
            },
          ),
          GestureDetector(
            onTap: () {
              print("add Data");
              myPass = passwordController.text;
              print("my Name: $myPass");
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "add data",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Name:$myName",
            style: const TextStyle(fontSize: 20),
          ),
        ]),
      ),
    );
  }
}
