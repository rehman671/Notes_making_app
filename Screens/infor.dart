import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Color(0xFF16121A), borderRadius: BorderRadius.circular(10)),
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Flutter Developer Required",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Karachi,Pakistan",
                  style: TextStyle(color: Color(0xFF959595), fontSize: 12),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.edit,
              color: Color(0xFF959595),
            ),
          ),
    Container(
    margin: EdgeInsets.only(right: 10),
    child: Icon(Icons.delete,color: Colors.red,

    ))],
      ),
    );
  }
}
