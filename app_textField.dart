
import 'package:flutter/material.dart';

class AppTextFields extends StatelessWidget {
     final String placeholder;
  const AppTextFields({ required this.placeholder});
  @override
  Widget build(BuildContext context) {
    return Container(
    margin: const EdgeInsets.only(top: 20),
    padding: const EdgeInsets.all(10),
    decoration:  BoxDecoration(color: const Color(0xFF1E1C24),borderRadius: BorderRadius.circular(15),border: Border.all(
    color: const Color(0xFF454545),
    width: 1
    )
    ),
    child:  TextField(

    style: const TextStyle(color: Colors.white,fontSize: 15),
    decoration: InputDecoration(
    border: InputBorder.none,
    hintText: placeholder,
    hintStyle: const TextStyle(color: Color(0xFF959595))
),

),
);
  }
}
