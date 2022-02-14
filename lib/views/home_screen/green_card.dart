import 'package:flur_04022022/models/voteView.dart';
import 'package:flutter/material.dart';

import 'expand_card.dart';

class CardGreen extends StatelessWidget {
  VoteView voteView;
  CardGreen(this.voteView);

  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 334,
        child: Card(
          elevation: 5.0,
          color: Color(0xFF45C952),
          child: Container(
            padding: EdgeInsets.fromLTRB(8, 14, 8, 14),
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 25, right: 190),
                    child: Text('Kì hốt hụi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),)
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.calendar_today_outlined, color: Colors.white),
                        SizedBox(width: 10,),
                        Text('hốt', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Text('${voteView.date}' , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
                  ],
                ),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.attach_money, color: Colors.white),
                        SizedBox(width: 10,),
                        Text('hốt (dự kiến)', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Text('${voteView.money}' , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
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
                        Text('đã đấu giá', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Text('${voteView.daDauGia}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
                  ],
                ),
                ExpansionTile(
                    title: Text('Nhấn để xem thêm', style: TextStyle(color: Colors.white)),
                    controlAffinity: ListTileControlAffinity.leading,
                    children: <Widget>[
                      ExpandGreenCard(voteView, 0xFF45C952)
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
