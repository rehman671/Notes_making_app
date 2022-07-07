import 'package:flutter/material.dart';

import '../app_button.dart';
import '../app_textField.dart';

class Signin extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: const Color(0x192720),
        body: Padding(
            padding: EdgeInsets.only(top:110,left: 27,right: 27, bottom:59),

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text("Welcome",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                 const  SizedBox(height: 14,),
                  const Text("We were waiting for you!",style: TextStyle(color: Colors.white,fontSize: 25)),
                  const SizedBox(height: 47),
                  const AppTextFields(placeholder: "Enter your Email Address"),
                  const AppTextFields(placeholder: "Enter your password"),

                  const Spacer(),

                  AppButton(label: "Sign up", onPress:onSignInpress)
                ]
            )
        ));

  }
  void onSignInpress(){

  }

}
