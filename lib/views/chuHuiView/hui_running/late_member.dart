import 'package:flur_04022022/models/user.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LateMember extends StatelessWidget {
  const LateMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = new User(
        ten: 'Nguyễn Văn Lương',
        tuoi: '39',
        thuNhapThang: '17,000,000đ',
        noiO: 'TPHCM',
        giaoDichThanhCOng: '102 giao dịch',
        congViec: 'Bác sĩ',
        congTy: 'BV Xuyên Á',
        soDienThoai: '0964213684',
        tiLeTraDungHen: '99%');

    User user2 = new User(ten: 'Lê Phúc Thịnh', tuoi: '22', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch', congViec: 'Kỹ sư phần mềm', congTy: 'FPT Software HN', soDienThoai: '0904593321', tiLeTraDungHen: '99%');


    return Container(
      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 334,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/personalInfo',
                      arguments: {'userInfo': user});
                },
                child: Card(
                    color: Colors.white,
                    child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(user.ten as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(width: 7,),
                                    Text('Ngày đóng đúng hẹn')
                                  ],
                                ),
                                Text('19/12/2021', style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(width: 7,),
                                    Text('Số ngày đã trễ')
                                  ],
                                ),
                                Text('5 ngày', style: TextStyle(fontWeight: FontWeight.bold),)
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
                                    Text('Phạt (0.1% / ngày trễ)')
                                  ],
                                ),
                                Text('4,000 đ', style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.warning_amber_outlined),
                                    SizedBox(width: 7,),
                                    Text('Số kì đang trễ')
                                  ],
                                ),
                                Text('1 kỳ', style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ],
                        ))),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 334,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/personalInfo',
                      arguments: {'userInfo': user2});
                },
                child: Card(
                    color: Colors.yellowAccent,
                    child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(user2.ten as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(width: 7,),
                                    Text('Ngày đóng đúng hẹn')
                                  ],
                                ),
                                Text('04/12/2021', style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(width: 7,),
                                    Text('Số ngày đã trễ')
                                  ],
                                ),
                                Text('5 ngày', style: TextStyle(fontWeight: FontWeight.bold),)
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
                                    Text('Phạt (0.1% / ngày trễ)')
                                  ],
                                ),
                                Text('300,000 đ', style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.warning_amber_outlined),
                                    SizedBox(width: 7,),
                                    Text('Số kì đang trễ')
                                  ],
                                ),
                                Text('3 kỳ', style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                border: Border.all(width: 2),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: TextButton(
                                onPressed: (){
                                  Alert(
                                    context: context,
                                    type: AlertType.info,
                                    title: "Thông tin này đã được báo cáo về Admin của hệ thống.",
                                    desc: 'Xin vui lòng chờ phản hồi',
                                    buttons: [
                                      DialogButton(
                                        child: Text(
                                          "Xác nhận",
                                          style: TextStyle(color: Colors.white, fontSize: 20),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          // Navigator.pop(context);
                                          // Navigator.pop(context);
                                        },
                                        width: 120,
                                      )
                                    ],
                                  ).show();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.warning_amber_outlined, color: Colors.black87,),
                                    Text('Báo cáo cho Admin', style: TextStyle(color: Colors.black87, fontSize: 15),),
                                  ],
                                )
                              ),
                            )
                          ],
                        ))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
