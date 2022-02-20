import 'package:flutter/material.dart';

class RadioMoneyChoose extends StatefulWidget {
  int selectedValue;
  RadioMoneyChoose(this.selectedValue ,{Key? key}) : super(key: key);

  @override
  _RadioMoneyChooseState createState() => _RadioMoneyChooseState();
}

class _RadioMoneyChooseState extends State<RadioMoneyChoose> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 10, 30.0, 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Radio(
                  activeColor: Colors.black87,
                  value: 1,
                  groupValue: widget.selectedValue,
                  onChanged: (value) {
                    setState(() {
                      widget.selectedValue = 1;
                    });
                  }
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/momo.png',
                  ),
                  SizedBox(width: 5,),
                  Text('Ví điện tử momo', style: TextStyle(color: Colors.white, fontSize: 16),)
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Radio(
                  activeColor: Colors.black87,
                  value: 2,
                  groupValue: widget.selectedValue,
                  onChanged: (value) {
                    setState(() {
                      widget.selectedValue = 2;
                    });
                  }
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/visa.png',
                  ),
                  SizedBox(width: 5,),
                  Text('Thẻ thanh toán quốc tế', style: TextStyle(color: Colors.white, fontSize: 16))
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: Divider(
              color: Colors.white,
              thickness: 1,
              height: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Radio(
                  activeColor: Colors.black87,
                  value: 3,
                  groupValue: widget.selectedValue,
                  onChanged: (value) {
                    setState(() {
                      widget.selectedValue = 3;
                    });
                  }
              ),
              Row(
                children: [
                  Text('Internet Banking (NH trong nước)', style: TextStyle(color: Colors.white, fontSize: 16))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
