import 'package:flur_04022022/models/user.dart';
import 'package:flutter/material.dart';

class ListMemberJoined extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<User> listUser = [
      User(ten: 'Chú Hoàng Lâm', tuoi: '39', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch'),
      User(ten: 'Nguyễn Văn A', tuoi: '27', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch'),
      User(ten: 'Bành Thị Bé Ba', tuoi: '52', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch'),
      User(ten: 'Lê Phúc Thịnh', tuoi: '22', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch'),
      User(ten: 'Võ Nhật Thiên', tuoi: '65', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch'),
      User(ten: 'Nguyễn Văn Lương', tuoi: '39', thuNhapThang: '17,000,000đ', noiO: 'TPHCM', giaoDichThanhCOng: '102 giao dịch'),
    ];
    return Column(
      children: listUser.map((user){
        return Align(
          alignment: Alignment.center,
          child: Container(
            width: 334,
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
                          Text(user.tuoi as String, style: TextStyle(fontWeight: FontWeight.bold),)
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
        );
      }).toList(),
    );
  }
}
