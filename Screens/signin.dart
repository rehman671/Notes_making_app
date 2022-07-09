import 'package:flutter/material.dart';
import 'package:my_new_flutter/Screens/welcome.dart';

import '../app_button.dart';
import '../app_textField.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
            padding: const EdgeInsets.only(
                top: 110, left: 27, right: 27, bottom: 59),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Welcome",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
              SizedBox(
                height: 14,
              ),
              Text("We were waiting for you!",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              SizedBox(height: 47),
              AppTextFields(placeholder: "Enter your name"),
              AppTextFields(placeholder: "Enter your password"),
              Spacer(),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => WelcomeScreen()));
                  },
                  child: AppButton(label: "Sign up", onPress: () {
                    onSigninpress(context);
                  }))
            ])));
  }

  void onSigninpress(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => WelcomeScreen()));
  }
}