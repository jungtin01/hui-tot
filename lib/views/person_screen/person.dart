import 'package:flur_04022022/views/person_screen/joined_screen.dart';
import 'package:flur_04022022/views/person_screen/waited_toJoin_screen.dart';
import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  bool checkButton1 = true;
  bool checkButton2 = false;
  String isUnderline = "none";
  int currentIndex = 0;
  List personalPage = [
      ListJoined(),
      ListWait()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF089C44),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: checkButton1 ? Colors.white : Color(0xFF089C44))
                  )
                ),
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        checkButton1 = true;
                        checkButton2 = false;
                        currentIndex = 0;
                      });
                    },
                    child: Text('Đã tham gia', style: TextStyle(color: Colors.white),)
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: checkButton2 ? Colors.white : Color(0xFF089C44))
                    )
                ),
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        checkButton1 = false;
                        checkButton2 = true;
                        currentIndex = 1;
                      });
                    },
                    child: Text('Đang chờ', style: TextStyle(color: Colors.white),)
                ),
              ),
            ],
          ),
          personalPage[currentIndex]
        ],
      ),
    );
  }
}
