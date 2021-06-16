import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  Login_page({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  String email = "";
  String password = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     IconButton(
          //         onPressed: () {
          //           print("press hoye geche..");
          //         },
          //         icon: Icon(Icons.menu)),
          //     IconButton(
          //         onPressed: () {
          //           print("press hoyeee geche..");
          //         },
          //         icon: Icon(Icons.shopping_cart)),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.email,
                ),
                hintText: "Please enter your email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.password,
                ),
                hintText: "Please enter your Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 300,
                child: ElevatedButton(onPressed: () {}, child: Text("Login"))),
          ),
        ],
      ),
    );
  }
}
