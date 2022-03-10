import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flutter/material.dart';

class ColumnHuiOpen extends StatefulWidget {
  IconData icons;
  String text;
  String text2;
  List<String> listString;
  bool isTextField;
  ColumnHuiOpen(this.icons, this.text, this.text2, this.listString, this.isTextField);

  @override
  State<ColumnHuiOpen> createState() => _ColumnHuiOpenState();
}

class _ColumnHuiOpenState extends State<ColumnHuiOpen> {
  String ? valueDay;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Row(
              children: [
                 Icon(widget.icons, color: Colors.white,),
                 SizedBox(width: 8,),
                 Text(widget.text, style: TextStyle(color: Colors.white, fontSize: 15),)
              ],
            ),
            widget.isTextField ? Container(
            padding: EdgeInsets.fromLTRB(15, 0,5,0),
            //width: size.width * 0.24,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white)
            ),
            child: DropdownButton(
              hint: Text(widget.text2, style: TextStyle(color: Colors.white),),
              value: valueDay,
              style: TextStyle(color:  Colors.white),
              dropdownColor: mainColor,
              items: widget.listString.map((e) {
                return DropdownMenuItem(
                    value: e,
                    child: Text(e)
                );
              }).toList(),
              onChanged: (newValue){
                setState(() {
                  valueDay = newValue as String;
                });
              },
            ),
          ) :
          Container(
            width: 100,
            height: 45,
            //margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
