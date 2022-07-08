import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_new_flutter/Screens/welcome.dart';
import 'package:my_new_flutter/app_button.dart';
import 'package:my_new_flutter/app_textField.dart';

import 'Screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Signup()
    );
  }
}