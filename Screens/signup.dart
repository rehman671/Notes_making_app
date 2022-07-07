import 'package:flutter/material.dart';
import 'package:my_new_flutter/Screens/signin.dart';

import '../app_button.dart';
import '../app_textField.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: const Color(0x192720),
        body: Padding(
            padding: EdgeInsets.only(top:110,left: 27,right: 27, bottom:59),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text("Let's Sign you Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                  SizedBox(height: 14,),
                  Text("Welcome\nJoin the community!",style: TextStyle(color: Colors.white,fontSize: 30)),
                  SizedBox(height: 47),
                  AppTextFields(placeholder: "Enter you name"),
                  AppTextFields(placeholder: "Enter your Email Address"),
                  AppTextFields(placeholder: "Enter your password"),

                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => Signin())
                      );
                    },
                    child: Row(
                      mainAxisAlignment : MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? ",style: TextStyle(
                            color: Color(0xFF8F8F9E),fontSize: 15)),
                        Text("Sign In",style: TextStyle(
                            color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                        ))
                        ,
                      ]
                      ,


                    ),
                  ),
                  SizedBox(height: 11),
                  AppButton(label: "Sign up", onPress:onSignInpress)
                ]
            )
        ));

  }
  void onSignInpress(){

  }

}
