import 'package:day1/utils/routes.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
            child: Text(
              "Wecome Arafat!!",
              style: TextStyle(
                fontSize: 64,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_right_rounded),
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.fapRoute);
        },
      ),
    );
  }
}
