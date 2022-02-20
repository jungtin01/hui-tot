import 'package:flur_04022022/models/conhui_huiInfo.dart';
import 'package:flutter/material.dart';

class ListJoined extends StatelessWidget {
  const ListJoined({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<HuiInfo> listJoined = [
      HuiInfo(name: 'Chú bé đần', money: '4,000,000đ', thamGia: '12 người', hanGop: 'mỗi cuối tháng', moiKy: '300,000đ', soKy: '12', daGop: '8/12 kỳ', tongThangGop: '12 tháng', hanGopSapToi: '21/02/2021', hanHotSapToi: '28/02/2022', isNear: true),
      HuiInfo(name: 'Chú bé đần 2', money: '50,000,000đ', thamGia: '8 người', hanGop: 'mỗi cuối tháng', moiKy: '300,000đ', soKy: '155', daGop: '8/155 kỳ', tongThangGop: '152 tháng', hanGopSapToi: '21/02/2021', hanHotSapToi: '28/02/2022', isNear: false),
      HuiInfo(name: 'Chú bé đần 3', money: '44,000,000đ', thamGia: '8 người', hanGop: 'mỗi cuối tháng', moiKy: '300,000đ', soKy: '12', daGop: '8/12 kỳ', tongThangGop: '12 tháng', hanGopSapToi: '21/02/2021', hanHotSapToi: '28/02/2022', isNear: true),
      HuiInfo(name: 'Chú bé đần 4', money: '35,000,000đ', thamGia: '16 người', hanGop: 'mỗi cuối tháng', moiKy: '300,000đ', soKy: '1299', daGop: '8/1299 kỳ', tongThangGop: '1532 tháng', hanGopSapToi: '21/02/2021', hanHotSapToi: '28/02/2022', isNear: false),
    ];


    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 334,
        height: 470,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListView(
            children: listJoined.map((e) {
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/infoHui', arguments: {'huiInfo' : e, 'isExit' : 2});
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  elevation: 5,
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e.name as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                            Text(e.money as String, style: TextStyle(fontSize: 20, color: Color(0xFF089C44) , fontWeight: FontWeight.bold),)
                          ],
                        ),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.people_alt_outlined),
                                SizedBox(width: 7,),
                                Text('Tham gia')
                              ],
                            ),
                            Text(e.thamGia as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_today_outlined),
                                SizedBox(width: 7,),
                                Text('Hạn góp')
                              ],
                            ),
                            Text(e.hanGop as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.attach_money_outlined),
                                SizedBox(width: 7,),
                                Text('Mỗi kỳ')
                              ],
                            ),
                            Text(e.moiKy as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_today_outlined),
                                SizedBox(width: 7,),
                                Text('Số kỳ')
                              ],
                            ),
                            Text(e.soKy as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_today_outlined),
                                SizedBox(width: 7,),
                                Text('Đã góp')
                              ],
                            ),
                            Text(e.daGop as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_today_outlined),
                                SizedBox(width: 7,),
                                Text('Tổng tháng góp')
                              ],
                            ),
                            Text(e.tongThangGop as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_today_outlined),
                                SizedBox(width: 7,),
                                Text('Hạn góp sắp tới', style: TextStyle(color: e.isNear as bool ? Colors.red : Color(0xFF89762B)),)
                              ],
                            ),
                            Text(e.hanGopSapToi as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: e.isNear as bool ? Colors.red : Color(0xFF89762B)),)
                          ],
                        ),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_today_outlined),
                                SizedBox(width: 7,),
                                Text('Hạn hốt sắp tới' , style: TextStyle(color: Color(0xFF089C44)),)
                              ],
                            ),
                            Text(e.hanHotSapToi as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF089C44)),)
                          ],
                        )
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
