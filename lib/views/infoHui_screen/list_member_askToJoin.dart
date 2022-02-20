import 'package:flur_04022022/models/user.dart';
import 'package:flur_04022022/views/personal_info_screen/personal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListAskToJoin extends StatelessWidget {
  const ListAskToJoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<User> listUser = [
      User(ten: 'Chú Hoàng Lâm', tuoi: '39', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch', congViec: 'Kỹ sư phần mềm', congTy: 'FPT Software HCM', soDienThoai: '0909555321', tiLeTraDungHen: '99%'),
      User(ten: 'Nguyễn Văn A', tuoi: '27', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch', congViec: 'Nhân viên bán hàng', congTy: 'FPT Telecom HCM', soDienThoai: '0906231564', tiLeTraDungHen: '99%'),
      User(ten: 'Bành Thị Bé Ba', tuoi: '52', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch', congViec: 'Giáo viên', congTy: 'THPT Nguyễn Hữu Cầu', soDienThoai: '0903254698', tiLeTraDungHen: '99%'),
      User(ten: 'Lê Phúc Thịnh', tuoi: '22', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch', congViec: 'Kỹ sư phần mềm', congTy: 'FPT Software HN', soDienThoai: '0904593321', tiLeTraDungHen: '99%'),
      User(ten: 'Võ Nhật Thiên', tuoi: '65', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch', congViec: 'Nội trợ', congTy: 'Tại nhà', soDienThoai: '0904268238', tiLeTraDungHen: '99%'),
      User(ten: 'Nguyễn Văn Lương', tuoi: '39', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch', congViec: 'Bác sĩ', congTy: 'BV Xuyên Á', soDienThoai: '0964213684', tiLeTraDungHen: '99%'),
    ];
    return Container(
      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text('Thành viên đã duyệt (6/12)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
          ),
          SizedBox(height: 10,),
          Column(
            children: listUser.map((user){
              return Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 334,
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/personalInfo', arguments: {'userInfo' : user});
                    },
                    child: Card(
                        color: Colors.white,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                      Text('Tuổi')
                                    ],
                                  ),
                                  Text((user.tuoi as String) + ' tuổi', style: TextStyle(fontWeight: FontWeight.bold),)
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
                                  Text(user.thuNhapThang as String, style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      SizedBox(width: 7,),
                                      Text('Nơi ở')
                                    ],
                                  ),
                                  Text(user.noiO as String, style: TextStyle(fontWeight: FontWeight.bold),)
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
                                  Text(user.giaoDichThanhCOng as String, style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
