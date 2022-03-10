import 'package:flur_04022022/models/history.dart';
import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flutter/material.dart';

class ColumnHistory extends StatelessWidget {
  History history;
  ColumnHistory(this.history);

  @override
  Widget build(BuildContext context) {

    Color getColor(){
      if(history.checkState as int == 2){
        return Color(0xFFC09444);
      }
      else if(history.checkState as int == 3){
        return Color(0xFFC3BB50);
      }
      return mainColor;
    }

    return Container(
      child: Column(
        children: [
          Container(
            height: 80,
            margin: EdgeInsets.fromLTRB(8.0,0,8,0),
            color: getColor(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(history.ngayGop as String, style: TextStyle(color: Colors.white,)),
                Text(history.nguoiGop as String, style: TextStyle(color: Colors.white, decoration: TextDecoration.underline),),
                Container(
                  child: Text(history.soTienGop as String, textAlign: TextAlign.center,style: TextStyle(color: Colors.white,)),
                  width: 100,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,0,8,8),
            child: Divider(
              thickness: 1,
              color: Colors.white,
              height: 1,
            ),
          )
        ],
      ),
    );
  }
}
