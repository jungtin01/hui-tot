import 'package:flutter/material.dart';

class ColumnInfo extends StatelessWidget {
  String info;
  Icon icon;
  String text;

  ColumnInfo(this.icon, this.text, this.info, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              SizedBox(width: 7,),
              Text(text, style: TextStyle(fontSize: 14),)
            ],
          ),
          Text(info, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
        ],
      ),
    );
  }
}
