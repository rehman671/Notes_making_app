
import 'package:flutter/material.dart';
import 'Screens/signup.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Signup()
    );
  }
}