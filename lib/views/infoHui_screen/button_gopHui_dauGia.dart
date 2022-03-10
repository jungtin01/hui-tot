import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ButtonGopHui extends StatefulWidget {
  const ButtonGopHui({Key? key}) : super(key: key);

  @override
  State<ButtonGopHui> createState() => _ButtonGopHuiState();
}

class _ButtonGopHuiState extends State<ButtonGopHui> {
  final myControllerAuction = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myControllerAuction.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 160,
            decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 3,
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
                    title: "Bạn có muốn góp hụi với số tiền : 300,000đ",
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
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "OK",
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
                child: Text('Góp hụi', style: TextStyle(color: Colors.white),)
            ),
          ),
          SizedBox(width: 10,),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 160,
            decoration: BoxDecoration(
                color: Color(0xFFDEBA3B),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(5, 0),
                  )
                ]
            ),
            child: TextButton(
                onPressed: (){
                  Alert(
                      context: context,
                      title: "Mời nhập số tiền muốn kêu",
                      content: Column(
                        children: [
                          TextField(
                            controller: myControllerAuction,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              icon: Icon(FontAwesomeIcons.moneyBillAlt),
                              labelText: 'số tiền muốn kêu',
                            ),
                          ),
                        ],
                      ),
                      buttons: [
                        DialogButton(
                          onPressed: () {
                            Alert(
                              context: context,
                              type: AlertType.warning,
                              title: "Bạn có chắc muốn kêu hụi với số tiền : " + myControllerAuction.text + " ?",
                              buttons: [
                                DialogButton(
                                  child: Text(
                                    "Xác nhận",
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () {
                                    //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.", type: AlertType.success).show();
                                    Alert(
                                      context: context,
                                      type: AlertType.success,
                                      title: "Thành công",
                                      buttons: [
                                        DialogButton(
                                          child: Text(
                                            "OK",
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
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(116, 116, 191, 1.0),
                                    Color.fromRGBO(52, 138, 199, 1.0)
                                  ]),
                                )
                              ],
                            ).show();
                          },
                          child: Text(
                            "Xác nhận",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ]).show();
                },
                child: Text('Kêu hụi', style: TextStyle(color: Colors.white),)
            ),
          )
        ],
      ),
    );
  }
}
