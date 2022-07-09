import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final GestureTapCallback onPress;

  const AppButton({required this.label, required this.onPress});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onPress,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15),
              decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15),border: Border.all(
                    color: const Color(0xFF454545),
                    width: 1)),
              child: Text(label,style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF191720),
                fontWeight: FontWeight.bold
              )),
            ),
          ),
        ),
      ],
    );
  }
}
