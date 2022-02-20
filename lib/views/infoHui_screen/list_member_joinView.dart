import 'package:flur_04022022/views/infoHui_screen/list_member.dart';
import 'package:flur_04022022/views/test.dart';
import 'package:flutter/material.dart';

class JoinView extends StatefulWidget {
  const JoinView({Key? key}) : super(key: key);

  @override
  _JoinViewState createState() => _JoinViewState();
}

class _JoinViewState extends State<JoinView> {
  bool checkButton1 = true;
  bool checkButton2 = false;
  int currentIndex = 0;
  List joinView = [
    ListMemberJoined(),
    Test()
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  child: Text('Thành viên (6)', style: TextStyle(color: Colors.white, fontSize: 15),)
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
                  child: Text('Lịch sử giao dịch', style: TextStyle(color: Colors.white, fontSize: 15),)
              ),
            ),
          ],
        ),
        joinView[currentIndex]
      ],
    );
  }
}
