import 'package:flur_04022022/models/conhui_huiInfo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListHui extends StatelessWidget {
  const ListHui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<HuiInfo> listHui = [
        HuiInfo(name: 'Đỗ Mai Nam', money: '50,000,000đ', soKy: '60', moiKy: '200,000đ', thamGia: '8/12 người', giaoDichThanhCong: '45 dây hụi', hanGop: 'mỗi 7 ngày', tongThangGop: '27 tháng'),
        HuiInfo(name: 'Ngô Văn A', money: '44,000,000đ', soKy: '60', moiKy: '200,000đ', thamGia: '8/12 người', giaoDichThanhCong: '45 dây hụi', hanGop: 'mỗi 7 ngày', tongThangGop: '27 tháng'),
        HuiInfo(name: 'Cao Thị B', money: '21,000,000đ', soKy: '60', moiKy: '200,000đ', thamGia: '8/12 người', giaoDichThanhCong: '45 dây hụi', hanGop: 'mỗi 7 ngày', tongThangGop: '27 tháng'),
        HuiInfo(name: 'Hồ Thị C', money: '56,000,000đ', soKy: '60', moiKy: '200,000đ', thamGia: '8/12 người', giaoDichThanhCong: '45 dây hụi', hanGop: 'mỗi 7 ngày', tongThangGop: '27 tháng'),
    ];

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 318,
        width: 370,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: listHui.map((e){
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/infoHui', arguments: {'huiInfo' : e, 'isExit' : 3});
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  elevation: 5,
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  child: Image.network("https://cuoifly.tuoitre.vn/820/0/ttc/r/2021/08/17/trend-vit-vang-07-1629170793.jpg"),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(e.name as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,)),
                                    Text('Chủ hụi')
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(e.money as String, style: TextStyle(fontSize: 16, color: Color(0xFF089C44) , fontWeight: FontWeight.bold),),
                                Text('tổng số tiền / lần hốt'),
                              ],
                            )
//                            Text(e.name as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
//                             Text(e.money as String, style: TextStyle(fontSize: 19, color: Color(0xFF089C44) , fontWeight: FontWeight.bold),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_today_outlined),
                                SizedBox(width: 7,),
                                Text('Số kỳ',)
                              ],
                            ),
                            Text(e.soKy as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.attach_money_outlined),
                                SizedBox(width: 7,),
                                Text('Mỗi kỳ',)
                              ],
                            ),
                            Text(e.moiKy as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.people_alt_outlined),
                                SizedBox(width: 7,),
                                Text('Đã tham gia')
                              ],
                            ),
                            Text(e.thamGia as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.whatshot_outlined),
                                SizedBox(width: 7,),
                                Text('Dây hụi đã tạo')
                              ],
                            ),
                            Text(e.giaoDichThanhCong as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
