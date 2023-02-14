import 'package:flutter/material.dart';
import 'package:loginui/pages/login_pages.dart';
import 'package:loginui/components/my_button.dart';
import 'package:loginui/components/my_textfield.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}