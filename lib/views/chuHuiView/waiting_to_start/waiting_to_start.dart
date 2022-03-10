import 'package:flur_04022022/models/conhui_huiInfo.dart';
import 'package:flutter/material.dart';

class WaitingToStart extends StatelessWidget {
  const WaitingToStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<HuiInfo> listWait = [
      HuiInfo(
          name: 'Đỗ Tuấn Kiệt',
          money: '4,000,000đ',
          thamGia: '9/12 người',
          hanGop: 'mỗi cuối tháng',
          moiKy: '300,000đ',
          soKy: '12',
          tongThangGop: '12 tháng'),
      HuiInfo(
          name: 'Đỗ Tuấn Kiệt',
          money: '50,000,000đ',
          thamGia: '7/8 người',
          hanGop: 'mỗi cuối tháng',
          moiKy: '300,000đ',
          soKy: '155',
          tongThangGop: '152 tháng'),
      HuiInfo(
          name: 'Đỗ Tuấn Kiệt',
          money: '44,000,000đ',
          thamGia: '5/8 người',
          hanGop: 'mỗi cuối tháng',
          moiKy: '300,000đ',
          soKy: '12',
          tongThangGop: '12 tháng'),
      HuiInfo(
          name: 'Đỗ Tuấn Kiệt',
          money: '35,000,000đ',
          thamGia: '12/16 người',
          hanGop: 'mỗi cuối tháng',
          moiKy: '300,000đ',
          soKy: '1299',
          tongThangGop: '1532 tháng')
    ];

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
          width: 334,
          height: 550,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView(
              children: listWait.map((e) {
                return InkWell(
                  onTap: (){
                    //Navigator.pushNamed(context, '/infoHui', arguments: {'huiInfo' : e, 'isExit' : 1});
                    Navigator.pushNamed(context, '/waitingInfoHui', arguments: {'huiInfo' : e});
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    elevation: 5,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Image.network("https://cdn.pixabay.com/photo/2016/03/31/19/57/avatar-1295406_960_720.png"),
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(e.name as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
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
                              //Text(e.money as String, style: TextStyle(fontSize: 20, color: Color(0xFF089C44) , fontWeight: FontWeight.bold),)
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
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          )),
    );
  }
}
