import 'package:flur_04022022/models/user.dart';
import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flur_04022022/views/personal_info_screen/column_info.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)?.settings.arguments as Map ;
    User userInfo = data['userInfo'] as User;

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
              color: Color(0xFFC8DCCC),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Image.network("https://cdn-icons-png.flaticon.com/512/147/147144.png"),
                        radius: 35,
                      ),
                      const SizedBox(width: 10,),
                      Text(userInfo.ten as String, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.calendar_today_outlined), 'Tuổi', userInfo.tuoi as String),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.attach_money_sharp), 'Thu nhập tháng', userInfo.thuNhapThang as String),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.work_outline), 'Công việc', userInfo.congViec as String),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.home_work_outlined), 'Công ty', userInfo.congTy as String),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.phone_iphone_outlined), 'Số điện thoại', userInfo.soDienThoai as String),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.location_on_outlined), 'Nơi ở', userInfo.noiO as String),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.whatshot_outlined), 'Giao dịch thành công', userInfo.giaoDichThanhCOng as String),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.money_outlined), 'Tỉ lệ trả đúng hẹn', userInfo.tiLeTraDungHen as String),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.18, right: MediaQuery.of(context).size.width * 0.18),
                    child: Center(
                        child: Text('* Các thông tin quan trọng như cmnd, hộ khẩu & chi tiết hơn sẽ được HuiTot nắm giữ', textAlign: TextAlign.center, style: TextStyle(color: mainColor, fontWeight: FontWeight.bold, fontSize: 15,shadows: <Shadow>[
                          Shadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 8,
                            offset: Offset(4, 4),
                          ),
                        ],),),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Divider(
                      height: 1,
                      color: mainColor,
                      thickness: 1,
                    ),
                  ),
                  Text('Thông tin người bảo hộ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Image.network("https://cdn-icons-png.flaticon.com/512/147/147144.png"),
                        ),
                        SizedBox(width: 7,),
                        Text('Ngô Thị Kim Hương', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.calendar_today_outlined), 'Tuổi', '53 tuổi'),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.people_alt_outlined), 'Quan hệ', 'Mẹ ruột'),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.attach_money), 'Thu nhập tháng', '15,000,000đ'),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.work_outline), 'Công việc', 'Kế toán'),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.home_work_outlined), 'Công ty', 'Dược Phamacity'),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.local_phone_outlined), 'Số điện thoại', '0901063615'),
                  const SizedBox(height: 8,),
                  ColumnInfo(const Icon(Icons.location_on_outlined), 'Nơi ở', 'TPHCM'),
                  const SizedBox(height: 40,),
                ],
              ),
            ),
            Container(
              color: mainColor,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text('Hình ảnh', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 30,),
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(2, 0),
                            )
                          ]
                      ),
                      child: Image.network('https://cdn.pixabay.com/photo/2014/10/23/10/10/dollars-499481__340.jpg')
                  ),
                  SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(2, 0),
                            )
                          ]
                      ),
                      child: Image.network('https://cdn.pixabay.com/photo/2014/10/23/10/10/dollars-499481__340.jpg')
                  ),
                  SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(2, 0),
                            )
                          ]
                      ),
                      child: Image.network('https://cdn.pixabay.com/photo/2014/10/23/10/10/dollars-499481__340.jpg')
                  ),
                  SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(2, 0),
                            )
                          ]
                      ),
                      child: Image.network('https://cdn.pixabay.com/photo/2014/10/23/10/10/dollars-499481__340.jpg')
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
