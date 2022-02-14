import 'package:flutter/material.dart';

class DropDownDate extends StatefulWidget {
  int selectedValue;
  // String value;
  DropDownDate(this.selectedValue);//, this.value);

  @override
  _DropDownDateState createState() => _DropDownDateState();
}

class _DropDownDateState extends State<DropDownDate> {

  @override
  Widget build(BuildContext context) {
    String valueDay = 'ngày';
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Giới tính'),
        Row(
          children: [
            Radio(
                value: 1,
                groupValue: widget.selectedValue,
                onChanged: (value) {
                  setState(() {
                    widget.selectedValue = 1;
                  });
                }
            ),
            Text('Nam')
          ],
        ),
        Row(
          children: [
            Radio(
                value: 2,
                groupValue: widget.selectedValue,
                onChanged: (value) {
                  setState(() {
                    widget.selectedValue = 2;
                  });
                }
            ),
            Text('Nữ')
          ],
        ),
        Row(
          children: [
            Radio(
                value: 3,
                groupValue: widget.selectedValue,
                onChanged: (value) {
                  setState(() {
                    widget.selectedValue = 3;
                  });
                }
            ),
            Text('Khác')
          ],
        ),
      ],
    );
  }
}