import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flutter/material.dart';

class ButtonGopHui extends StatelessWidget {
  const ButtonGopHui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 160,
            decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(5, 0),
                  )
                ]
            ),
            child: TextButton(
                onPressed: (){},
                child: Text('Góp hụi', style: TextStyle(color: Colors.white),)
            ),
          ),
          SizedBox(width: 10,),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 160,
            decoration: BoxDecoration(
                color: Color(0xFFDEBA3B),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(5, 0),
                  )
                ]
            ),
            child: TextButton(
                onPressed: (){},
                child: Text('Đấu giá', style: TextStyle(color: Colors.white),)
            ),
          )
        ],
      ),
    );
  }
}
