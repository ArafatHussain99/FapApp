import 'package:day1/pages/fap.dart';
import 'package:day1/utils/routes.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Login_page(title: 'Login Page'),
        MyRoutes.welcomeRoute: (context) => Welcome(),
        MyRoutes.fapRoute: (context) => Fap_page(),
      },
    );
  }
}
