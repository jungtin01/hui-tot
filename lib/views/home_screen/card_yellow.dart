import 'package:flur_04022022/models/voteView.dart';
import 'package:flur_04022022/views/home_screen/expand_card.dart';
import 'package:flutter/material.dart';

class CardYellow extends StatelessWidget {
  VoteView voteView;
  CardYellow(this.voteView);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 334,
        child: Card(
          elevation: 5.0,
          color: Color(0xFFDEBA3B),
          child: Container(
            padding: EdgeInsets.fromLTRB(8, 14, 8, 14),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 25, right: 150),
                    child: Text('Nhắc đóng hụi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),)),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today_outlined, color: Colors.white,),
                        SizedBox(width: 10,),
                        Text('hốt', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Text('${voteView.date}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
                  ],
                ),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.attach_money, color: Colors.white),
                        SizedBox(width: 10,),
                        Text('phải đóng', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Text('${voteView.money}',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
                  ],
                ),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.attach_money, color: Colors.white),
                        SizedBox(width: 10,),
                        Text('phạt (nếu trễ hẹn)', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Text('${voteView.punish}' ,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
                  ],
                ),
                ExpansionTile(
                  title: Text('Nhấn để xem thêm', style: TextStyle(color: Colors.white)),
                  controlAffinity: ListTileControlAffinity.leading,
                  children: <Widget>[
                    ExpandGreenCard(voteView, 0xFFDEBA3B)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
