
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ButtonAskToJoin extends StatelessWidget {
  const ButtonAskToJoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 160,
      decoration: BoxDecoration(
          color: Color(0xFFDEBA3B),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(5, 0),
            )
          ]
      ),
      child: TextButton(
          onPressed: (){
            Alert(
              context: context,
              type: AlertType.success,
              title: "Thành công",
              desc: "Xin vui lòng chờ chủ hụi xét duyệt.",
              buttons: [
                DialogButton(
                  child: Text(
                    "Xác nhận",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  width: 120,
                )
              ],
            ).show();
          },
          child: Text('Yêu cầu tham gia', style: TextStyle(color: Colors.white),)
      ),
    );
  }
}
