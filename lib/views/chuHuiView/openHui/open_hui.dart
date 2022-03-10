import 'package:flur_04022022/views/addMoney_screen/radio_moneyChoose.dart';
import 'package:flur_04022022/views/chuHuiView/openHui/column_hui_register.dart';
import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class OpenHui extends StatelessWidget {

  const OpenHui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listPeople = ['20','15','12','10'];
    List<String> listGetMoney = ['Mỗi 5 ngày','Mỗi 10 ngày','Mỗi 15 ngày','Mỗi 30 ngày'];
    List<String> listCoLai = ['Có lãi', 'Không lãi'];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFC2DBC9),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    "Do Tuan Kiet",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: Colors.black
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: CircleAvatar(
                    child: Image.network("https://cdn-icons-png.flaticon.com/512/147/147144.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                color: Color(0xFFC2DBC9),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0, top: 10.0,bottom: 10.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: const TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text('đ', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Tổng số tiền/1 lần hốt hụi',  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: MediaQuery.of(context).size.height * 0.8,
                color: mainColor,
                //color: Colors.amber,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    ColumnHuiOpen(Icons.person_outline, 'tham gia', listPeople[0] ,listPeople, true),
                    SizedBox(height: 10,),
                    ColumnHuiOpen(Icons.calendar_today_outlined, 'hạn thu tiền',listGetMoney[0], listGetMoney, true),
                    SizedBox(height: 10,),
                    // ColumnHuiOpen(Icons.arrow_upward_outlined, 'Lãi',listCoLai[0]  ,listCoLai, true),
                    // SizedBox(height: 10,),
                    ColumnHuiOpen(Icons.monetization_on_outlined, 'Số tiền mỗi kì',listCoLai[0]  ,listCoLai, false),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15 , 20 , 15 , 0),
                      child: Divider(
                        color: Colors.white,
                        height: 1,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Tính toán dự đoán', style: TextStyle(color: Colors.white, fontSize: 24),),
                    SizedBox(height: 20,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_today_outlined, color: Colors.white,),
                              SizedBox(width: 8,),
                              Text('Tổng số kỳ sẽ thu', style: TextStyle(color: Colors.white, fontSize: 15),),
                            ],
                          ),
                          Text('0', style: TextStyle(color: Colors.white, fontSize: 15))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.black87,
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
                              title: "Bạn đã mở hụi thành công.",
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
                          child: Text('Bắt đầu mở hụi', style: TextStyle(color: Colors.yellow),)
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
