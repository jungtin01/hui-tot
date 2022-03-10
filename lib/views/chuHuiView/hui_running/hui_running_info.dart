import 'package:flur_04022022/models/conhui_huiInfo.dart';
import 'package:flur_04022022/views/chuHuiView/hui_running/below_list_running.dart';
import 'package:flur_04022022/views/chuHuiView/hui_running/list_need_confirm.dart';
import 'package:flur_04022022/views/chuHuiView/waiting_to_start/below_display_list.dart';
import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HuiRunningInfo extends StatefulWidget {
  const HuiRunningInfo({Key? key}) : super(key: key);

  @override
  _HuiWaitingInfoState createState() => _HuiWaitingInfoState();
}

class _HuiWaitingInfoState extends State<HuiRunningInfo> {
  HuiInfo huiInfo = HuiInfo();
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map ;
    huiInfo = data['huiInfo'] as HuiInfo;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFC8DCCC),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    "Do Tuan Kiet",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: CircleAvatar(
                    child: Image.network("https://cdn-icons-png.flaticon.com/512/147/147144.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(left: 35, right: 35),
                color: Color(0xFFC8DCCC),
                width: MediaQuery.of(context).size.width,
                height: 310,
                child: Column(
                  children: [
                    Text(huiInfo.money as String, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: mainColor),),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(huiInfo.name as String, style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(' đã mở hụi')
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today),
                            SizedBox(width: 7,),
                            Text('Số kỳ')
                          ],
                        ),
                        Text(huiInfo.soKy as String, style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.attach_money),
                            SizedBox(width: 7,),
                            Text('Mỗi kỳ')
                          ],
                        ),
                        Text(huiInfo.moiKy as String, style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today),
                            SizedBox(width: 7,),
                            Text('Hạn góp')
                          ],
                        ),
                        Text(huiInfo.hanGop as String, style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today),
                            SizedBox(width: 7,),
                            Text('Tổng tháng góp')
                          ],
                        ),
                        Text(huiInfo.tongThangGop as String, style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
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
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (context) => ListConfirm()
                          );
                        },
                        child: Text('Danh sách kêu hụi', style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                )
            ),
            Container(
                color: Color(0xFF089C44),
                width: MediaQuery.of(context).size.width,
                child: Container(
                  child: BelowListRunning(),
                )
            )
          ],
        ),
      ),
    );
  }
}
