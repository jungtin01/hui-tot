import 'package:flur_04022022/models/voteView.dart';
import 'package:flutter/material.dart';
class ExpandGreenCard extends StatelessWidget {
  VoteView voteView;
  int color;
  ExpandGreenCard(this.voteView, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      //elevation: 0.0,
      margin: EdgeInsets.zero,
      color: Color(color),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.calendar_today_outlined, color: Colors.white),
                  SizedBox(width: 10,),
                  Text('Kỳ', style: TextStyle(color: Colors.white)),
                ],
              ),
              Text('${voteView.ky}' , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
            ],
          ),
          SizedBox(height: 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.person, color: Colors.white),
                  SizedBox(width: 10,),
                  Text('Chủ', style: TextStyle(color: Colors.white)),
                ],
              ),
              Text('${voteView.chu}' , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
            ],
          ),
          SizedBox(height: 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.people, color: Colors.white),
                  SizedBox(width: 10,),
                  Text('Tham Gia', style: TextStyle(color: Colors.white)),
                ],
              ),
              Text('${voteView.thamGia}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 150, left: 0),
            child: Divider(
              color: Colors.white,
              height: 10,
              thickness: 1,
            ),
          ),
          Row(
            children: [
              TextButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.add_circle),
                  label: Text('Đóng hụi', style: TextStyle(color: Colors.white),),
                  style: TextButton.styleFrom(
                      primary: Colors.lightGreenAccent,
                      padding: EdgeInsets.all(10),
                  ),
              ),
              TextButton.icon(
                onPressed: (){},
                icon: Icon(Icons.info_outline_rounded),
                label: Text('Thông tin chi tiết', style: TextStyle(color: Colors.white),),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.all(10),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
