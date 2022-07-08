import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'infor.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 80, left: 35, right: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "Abdul Rehman",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFF454545))),
                  child: Row(
                    //Search bar
                    children: [
                      Icon(Icons.search, color: Color(0xFF959595)),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: "Search Keyword",
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Color(0xFF959595))),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              info(),
              info(),
              info(),
              info(),
              info(),
              info(),
              info(),info(),info(),info(),info()
            ],
          ),
        ),
      ),
    );
  }
}
