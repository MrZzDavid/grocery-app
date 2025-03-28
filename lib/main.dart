import 'package:flutter/material.dart';
import 'package:grocery_app/pages/login_page.dart';
import 'package:grocery_app/pages/main_page.dart';

import 'pages/signup_page.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: ThemeData(fontFamily: 'Gilroy'),
    );
  }
}
