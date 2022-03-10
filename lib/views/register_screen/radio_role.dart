import 'package:flutter/material.dart';

class RadioRole extends StatefulWidget {
  int selectedValue;
  // String value;
  RadioRole(this.selectedValue);//, this.value);

  @override
  _DropDownDateState createState() => _DropDownDateState();
}

class _DropDownDateState extends State<RadioRole> {

  @override
  Widget build(BuildContext context) {
    String valueDay = 'ngày';
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Đăng kí với role'),
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
            Text('Chủ hụi')
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
            Text('Con hụi')
          ],
        ),
      ],
    );
  }
}