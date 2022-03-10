import 'package:flur_04022022/models/voteView.dart';
import 'package:flutter/material.dart';
import 'package:flur_04022022/views/home_screen/card_yellow.dart';
import 'package:flur_04022022/views/home_screen/green_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MyHomePage extends StatefulWidget {


  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myControllerAuction = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myControllerAuction.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    List<VoteView> listVoteView = [
      VoteView(date: '23/12/2021', money: '300,999đ', punish: '100,200đ', ky: '9/12' ,chu: 'Nguyễn Ngọc Thanh Hóa',thamGia: '12', isLate: true),
      VoteView(date: '23/12/2021', money: '300,999đ', daDauGia: '8/12 người', ky: '9/12' ,chu: 'Nguyễn Ngọc Thanh Hóa',thamGia: '12',isLate: false),
      VoteView(date: '23/12/2021', money: '300,999đ', daDauGia: '8/12 người', ky: '9/12' ,chu: 'Nguyễn Ngọc Thanh Hóa',thamGia: '12', isLate: false),
      VoteView(date: '23/12/2021', money: '300,999đ', punish: '100,200đ', ky: '9/12' ,chu: 'Nguyễn Ngọc Thanh Hóa',thamGia: '12', isLate: true),
      VoteView(date: '23/12/2021', money: '300,999đ', daDauGia: '8/12 người', ky: '9/12' ,chu: 'Nguyễn Ngọc Thanh Hóa',thamGia: '12', isLate: false),
      VoteView(date: '23/12/2021', money: '300,999đ', daDauGia: '8/12 người', ky: '9/12' ,chu: 'Nguyễn Ngọc Thanh Hóa',thamGia: '12', isLate: false),
      VoteView(date: '23/12/2021', money: '300,999đ', punish: '100,200đ', ky: '9/12' ,chu: 'Nguyễn Ngọc Thanh Hóa',thamGia: '12', isLate: true),
    ];

    return Container(
        color: Color(0xFF089C44),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Alert(
                        context: context,
                        title: "Mời nhập số tiền muốn rút",
                        content: Column(
                          children: [
                            TextField(
                              controller: myControllerAuction,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                icon: Icon(FontAwesomeIcons.moneyBillAlt),
                                labelText: 'số tiền muốn rút',
                              ),
                            ),
                          ],
                        ),
                        buttons: [
                          DialogButton(
                            onPressed: () {
                              Alert(
                                context: context,
                                type: AlertType.warning,
                                title: "Bạn có chắc muốn rút số tiền : " + myControllerAuction.text + " ?",
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "Xác nhận",
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/getMoney');
                                    },
                                    color: Color.fromRGBO(0, 179, 134, 1.0),
                                  ),
                                  DialogButton(
                                    child: Text(
                                      "Hủy",
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    gradient: LinearGradient(colors: [
                                      Color.fromRGBO(116, 116, 191, 1.0),
                                      Color.fromRGBO(52, 138, 199, 1.0)
                                    ]),
                                  )
                                ],
                              ).show();
                            },
                            child: Text(
                              "Xác nhận",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ]).show();
                  },
                  icon: const Icon(Icons.add_circle),
                  label: const Text("Rút tiền"),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.all(10)
                  ),
                ),
                SizedBox(width: 30,),
                Container(
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/addMoney');
                    },
                    icon: const Icon(Icons.monetization_on),
                    label: const Text("Nạp tiền"),
                    style: TextButton.styleFrom(
                      primary: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  height: 114,
                  width: 350,
                  padding: EdgeInsets.fromLTRB(13, 14, 13, 14),
                  decoration: BoxDecoration(
                    color: Color(0xFF78B48C),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Báo Cáo', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18), ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tổng tiền góp hụi trong tháng', style: TextStyle(color: Colors.white70, fontSize: 15),),
                          Text('5,330,500 đ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Số tiền trong ví', style: TextStyle(color: Colors.white70, fontSize: 15),),
                          Text('5,000,000 đ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),)
                        ],
                      ),
                    ],
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.only(right: 32, left: 32),
              child: Divider(
                color: Colors.white,
                height: 20,
                thickness: 1,
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 25, right: 70, bottom: 10, top: 7),
                child: Text('Sự Kiện Quan Trọng Sắp Tới', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),)
            ),
            SizedBox(
              height: 295,
              // color: Colors.redAccent,
              child: ListView(
                children: listVoteView.map((e) {
                  return (e.isLate as bool) ? CardYellow(e) : CardGreen(e);
                }).toList(),
              ),
            )
          ],
        ),
      );
  }
}