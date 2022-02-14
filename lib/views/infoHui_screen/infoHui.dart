import 'package:flur_04022022/models/conhui_huiInfo.dart';
import 'package:flutter/material.dart';

class InfoHui extends StatefulWidget {

  const InfoHui({Key? key}) : super(key: key);

  @override
  State<InfoHui> createState() => _InfoHuiState();
}

class _InfoHuiState extends State<InfoHui> {
  HuiInfo huiInfo = HuiInfo();

  @override
  Widget build(BuildContext context) {
    huiInfo = ModalRoute.of(context)?.settings.arguments as HuiInfo;

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
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, right: 35),
                color: Color(0xFFC8DCCC),
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: Column(
                  children: [
                    Text(huiInfo.money as String, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xFF089C44)),),
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
                        Text(huiInfo.soKy as String)
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
                        Text(huiInfo.moiKy as String)
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
                        Text(huiInfo.hanGop as String)
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
                        Text(huiInfo.tongThangGop as String)
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(45.0,20.0,45.0,20.0),
                      child: Divider(
                        color: Color(0xFF089C44),
                        height: 1,
                        thickness: 1,
                      ),
                    ),
                    Text('Thông tin nhanh chủ hụi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today),
                            SizedBox(width: 7,),
                            Text('Tuổi')
                          ],
                        ),
                        Text('29 tuổi')
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
                            Text('Thu nhập tháng')
                          ],
                        ),
                        Text('17,000,000đ')
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 7,),
                            Text('Nơi ở')
                          ],
                        ),
                        Text('TPHCM')
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.whatshot_outlined),
                            SizedBox(width: 7,),
                            Text('Giao dịch thành công')
                          ],
                        ),
                        Text('102 giao dịch')
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xFF089C44),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              )
            ],
          ),
        ),
      ),
    );
  }
}