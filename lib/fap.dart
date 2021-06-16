import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fap counter"),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(count <= 6
                    ? "lib/img/Healthy-Banana-Ice-Cream-Recipe.jpeg"
                    : "lib/img/sad-boy.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You have fapped: ",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                  count.toString() + " Times",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 50,
                  child: Text(
                    count == 0
                        ? "pure boii"
                        : count == 1
                            ? "fapped once"
                            : count == 2
                                ? "double fap"
                                : count == 3
                                    ? "triple fap"
                                    : count == 4
                                        ? "Quadra Fap"
                                        : count == 5
                                            ? "penta fap"
                                            : count == 6
                                                ? "Super fapper"
                                                : "enough broo!",
                    style: TextStyle(
                      color: count > 6 ? Colors.red : Colors.black,
                      //color: Colors.red,
                      fontSize: 32,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              )
              // :ok_hand: :x:
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: Icon(Icons.restart_alt),
            onPressed: () {
              setState(() {
                count = 0;
              });
              print(count);
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.add_circle_outline_rounded),
            onPressed: () {
              setState(() {
                count++;
              });
              print(count);
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.remove_circle_outline_rounded),
            onPressed: () {
              setState(() {
                count > 0 ? count-- : count = 0;
              });
              print(count);
            },
          ),
        ],
      ),
    );
  }
}
