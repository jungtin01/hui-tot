import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ButtonExit extends StatelessWidget {
  const ButtonExit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
          color: Colors.red,
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
              type: AlertType.warning,
              title: "Bạn có chắc muốn hủy yêu cầu",
              buttons: [
                DialogButton(
                  child: Text(
                    "Xác nhận",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Alert(
                      context: context,
                      type: AlertType.success,
                      title: "Thành công",
                      desc: "Bạn đã hủy yêu cầu thành công.",
                      buttons: [
                        DialogButton(
                          child: Text(
                            "Xác nhận",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          width: 120,
                        )
                      ],
                    ).show();
                  },
                  color: Color.fromRGBO(0, 179, 134, 1.0),
                ),
                DialogButton(
                  child: Text(
                    "Hủy",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Navigator.pop(context),
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(116, 116, 191, 1.0),
                    Color.fromRGBO(52, 138, 199, 1.0)
                  ]),
                )
              ],
            ).show();
          },
          child: Text('Hủy yêu cầu tham gia', style: TextStyle(color: Colors.white),)
      ),
    );
  }
}
