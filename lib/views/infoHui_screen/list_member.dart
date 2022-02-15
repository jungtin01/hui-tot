import 'package:flur_04022022/models/user.dart';
import 'package:flutter/material.dart';

class ListMemberJoined extends StatelessWidget {
  User user;
  ListMemberJoined(this.user);

  @override
  Widget build(BuildContext context) {

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
  }
}
