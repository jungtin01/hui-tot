import 'package:flur_04022022/views/chuHuiView/waiting_to_start/list_member_ask_chuHui.dart';
import 'package:flur_04022022/views/chuHuiView/waiting_to_start/list_member_chuHui.dart';
import 'package:flutter/material.dart';

class BelowList extends StatefulWidget {
  const BelowList({Key? key}) : super(key: key);

  @override
  _BelowListState createState() => _BelowListState();
}

class _BelowListState extends State<BelowList> {
  bool checkButton1 = true;
  bool checkButton2 = false;
  int currentIndex = 0;

  List listView = [
    ListMemberAdminWait(),
    ListMemberAskChuHui()
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
                  child: Text('Yêu cầu tham gia', style: TextStyle(color: Colors.white, fontSize: 15),)
              ),
            ),
          ],
        ),
        listView[currentIndex]
      ],
    );
  }
}
