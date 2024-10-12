import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyApp();
}

class _MyApp extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Shoes"),
            actions: const [Icon(Icons.shopping_cart, color: Colors.blue)],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 400,
                width: 1000,
                child: Image.network(
                    "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg"),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Nike Air Force 1 \" 07",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {},
                      child: const Text("SHOES",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {},
                      child: const Text("FOOTWEAR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "Virat Kohli is an Indian international cricketer who plays Test and ODI cricket for the Indian national team. A former captain in all formats of the game, Kohli retired from the T20I format following India's win at the 2024 T20 World Cup."),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Quantity",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
