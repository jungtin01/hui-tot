import 'package:flutter/material.dart';

class TextFieldInfo extends StatelessWidget {
  String label;
  TextFieldInfo(this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(label),
        SizedBox(height: 10,),
        const TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
            ),
          ),
        ),
      ],
    );
  }
}
