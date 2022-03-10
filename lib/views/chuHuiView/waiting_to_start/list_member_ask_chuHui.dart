import 'package:flur_04022022/models/user.dart';
import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ListMemberAskChuHui extends StatelessWidget {
  const ListMemberAskChuHui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = new User(ten: 'Hồ Quang Hiếu', tuoi: '25', thuNhapThang: '17,000,000đ', noiO: 'TP.HCM', giaoDichThanhCOng: '22 giao dịch', congViec: 'Kỹ sư phần mềm', congTy: 'FPT Software HCM', soDienThoai: '0909555321', tiLeTraDungHen: '99%');

    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          //height: 250,
          width: 334,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100)
          ),
          child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/personalInfo', arguments: {'userInfo' : user});
              },
              child: Card(
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hồ Quang Hiếu',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.calendar_today_outlined),
                                SizedBox(
                                  width: 7,
                                ),
                                Text('Tuổi')
                              ],
                            ),
                            const Text(
                              '25 tuổi',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.attach_money),
                                SizedBox(
                                  width: 7,
                                ),
                                Text('Thu nhập tháng')
                              ],
                            ),
                            const Text(
                              '17,000,000 đ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.location_on_outlined),
                                SizedBox(
                                  width: 7,
                                ),
                                Text('Nơi ở')
                              ],
                            ),
                            const Text(
                              'TP.HCM',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.whatshot_outlined),
                                SizedBox(
                                  width: 7,
                                ),
                                Text('Giao dịch thành công')
                              ],
                            ),
                            const Text(
                              '12 giao dịch',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 180,
                              child: OutlinedButton(
                                onPressed: () {
                                  Alert(
                                    context: context,
                                    type: AlertType.success,
                                    title: "Thành công",
                                    buttons: [
                                      DialogButton(
                                        child: Text(
                                          "Xác nhận",
                                          style: TextStyle(color: Colors.white, fontSize: 20),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          //Navigator.pop(context);
                                        },
                                        width: 120,
                                      )
                                    ],
                                  ).show();
                                },
                                child: Text('Duyệt', style: TextStyle(color: mainColor, fontWeight: FontWeight.w500),),
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 2.0, color: mainColor),
                                ),
                              ),
                            ),
                            //SizedBox(width: 10,),
                            SizedBox(
                              width: 110,
                              child: OutlinedButton(
                                onPressed: () {
                                  Alert(
                                    context: context,
                                    type: AlertType.warning,
                                    title: "Bạn có chắc muốn hủy yêu cầu",
                                    buttons: [
                                      DialogButton(
                                        child: Text(
                                          "Xác nhận",
                                          style: TextStyle(color: Colors.white, fontSize: 20),
                                        ),
                                        onPressed: () {
                                          Alert(
                                            context: context,
                                            type: AlertType.success,
                                            title: "Bạn đã hủy yêu cầu thành công.",
                                            buttons: [
                                              DialogButton(
                                                child: Text(
                                                  "Xác nhận",
                                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  Navigator.pop(context);
                                                },
                                                width: 120,
                                              )
                                            ],
                                          ).show();
                                        },
                                        color: Color.fromRGBO(0, 179, 134, 1.0),
                                      ),
                                      DialogButton(
                                        child: Text(
                                          "Hủy",
                                          style: TextStyle(color: Colors.white, fontSize: 20),
                                        ),
                                        onPressed: () => Navigator.pop(context),
                                        gradient: LinearGradient(colors: [
                                          Color.fromRGBO(116, 116, 191, 1.0),
                                          Color.fromRGBO(52, 138, 199, 1.0)
                                        ]),
                                      )
                                    ],
                                  ).show();
                                },
                                child: Text('Từ chối', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.w500)),
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 2.0, color: Colors.deepOrange),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))),
        ),
      ),
    );
  }
}
