import 'package:flur_04022022/views/addMoney_screen/radio_moneyChoose.dart';
import 'package:flutter/material.dart';

class AddMoney extends StatelessWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF0E4C4),
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
                color: Color(0xFFF0E4C4),
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
                    Text('Số tiền muốn nạp',  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                color: Color(0xFFDEBA3B),
                //color: Colors.amber,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('Nguồn tiền', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                    RadioMoneyChoose(1),
                    Image.asset(
                        'assets/banks.png',
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
                          onPressed: (){},
                          child: Text('Nạp tiền', style: TextStyle(color: Colors.yellow),)
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
