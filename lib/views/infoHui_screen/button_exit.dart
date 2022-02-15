import 'package:flutter/material.dart';

class ButtonExit extends StatelessWidget {
  const ButtonExit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 160,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(5, 0),
            )
          ]
      ),
      child: TextButton(
          onPressed: (){},
          child: Text('Thoát khỏi nhóm', style: TextStyle(color: Colors.white),)
      ),
    );
  }
}
