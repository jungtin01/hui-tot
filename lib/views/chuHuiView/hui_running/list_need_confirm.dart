import 'package:flur_04022022/models/confirm.dart';
import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ListConfirm extends StatefulWidget {
  const ListConfirm({Key? key}) : super(key: key);

  @override
  _ListConfirmState createState() => _ListConfirmState();
}

class _ListConfirmState extends State<ListConfirm> {
  int _counter = 0;
  List<Confirm> exercises = [
    Confirm(name: 'Nguyễn Văn A', money: '300,000 đ'),
    Confirm(name: 'Nguyễn Văn B', money: '300,000 đ'),
    Confirm(name: 'Nguyễn Văn C', money: '400,000 đ'),
    Confirm(name: 'Nguyễn Thị D', money: '300,000 đ'),
    Confirm(name: 'Bành Thị E', money: '500,000 đ'),
    Confirm(name: 'Nguyễn Minh F', money: '350,000 đ'),
    Confirm(name: 'Trần Văn G', money: '400,000 đ')
  ];
  int _selected = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Danh sách kêu hụi'),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      actions: <Widget>[
        Container(
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.red)
          ),
          child: TextButton(
            child: const Text('Cancel', style: TextStyle(color: Colors.red),),
            onPressed: () {
              Navigator.pop(context);
              //widget.onOk();
            },
          ),
        ),
        Container(
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: mainColor)
          ),
          child: TextButton(
            child: const Text('OK', style: TextStyle(color: mainColor),),
            onPressed: () {
              Alert(
                context: context,
                type: AlertType.warning,
                title: "Bạn có muốn chọn người chơi : Bành Thị E hốt hụi ?",
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
                        title: "Thành công.",
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
              //widget.onOk();
            },
          ),
        ),
      ],
      content: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Divider(),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.4,
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: exercises.length,
                    itemBuilder: (BuildContext context, int index) {
                      return RadioListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Người chơi:    " +(exercises[index].name as String), style: TextStyle(fontSize: 14),),
                              SizedBox(height: 5,),
                              Text("Số tiền:           " +(exercises[index].money as String), style: TextStyle(fontSize: 14)),
                            ],
                          ),
                          value: index,
                          groupValue: _selected,
                          onChanged: (value) {
                            setState(() {
                              _selected = index;
                            });
                          });
                    }),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
