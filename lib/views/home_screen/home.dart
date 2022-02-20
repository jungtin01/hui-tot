import 'package:flur_04022022/models/voteView.dart';
import 'package:flutter/material.dart';
import 'package:flur_04022022/views/home_screen/card_yellow.dart';
import 'package:flur_04022022/views/home_screen/green_card.dart';

class MyHomePage extends StatelessWidget {

  const MyHomePage({Key? key}) : super(key: key);

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
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle),
                  label: const Text("Mở Dây Hụi"),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.all(10)
                  ),
                ),
                SizedBox(width: 30,),
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/addMoney');
                  },
                  icon: const Icon(Icons.monetization_on),
                  label: const Text("Nạp tiền"),
                  style: TextButton.styleFrom(
                    primary: Colors.yellow,
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
                  width: 334,
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
                          Text('Tổng sẽ chi tháng', style: TextStyle(color: Colors.white70, fontSize: 15),),
                          Text('5,330,500đ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tổng hụi chưa hốt', style: TextStyle(color: Colors.white70, fontSize: 15),),
                          Text('25,151,999đ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),)
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
                margin: EdgeInsets.only(left: 25, right: 295),
                child: Text('Sắp Tới', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),)
            ),
            SizedBox(
              height: 320,
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