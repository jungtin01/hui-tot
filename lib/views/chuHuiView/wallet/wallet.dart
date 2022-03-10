import 'package:flur_04022022/models/wallet_history.dart';
import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class WalletScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WalletScreen> {
  final myControllerAuction = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myControllerAuction.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    List<WalletHistory> listHis = [
      WalletHistory(name: 'Rút tiền', money: '3,000,000đ', date: '19/12/2020', isGetMony: true),
      WalletHistory(name: 'Nạp tiền', money: '200,000đ', date: '19/12/2020', isGetMony: false),
      WalletHistory(name: 'Rút tiền', money: '3,500,000đ', date: '19/12/2020', isGetMony: true),
      WalletHistory(name: 'Rút tiền', money: '3,700,000đ', date: '08/07/2020', isGetMony: true),
      WalletHistory(name: 'Rút tiền', money: '2,000,000đ', date: '30/06/2020', isGetMony: true),
      WalletHistory(name: 'Nạp tiền', money: '8,250,000đ', date: '21/05/2020', isGetMony: false),
      WalletHistory(name: 'Nạp tiền', money: '6,800,000đ', date: '17/04/2020', isGetMony: false),
    ];

    // to get size
    var size = MediaQuery.of(context).size;

    // style
    var cardTextStyle = TextStyle(
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: mainColor,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            color: mainColor,
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://cdn.dribbble.com/users/29574/screenshots/4826855/media/eed56dc346687c0386b77e431381a9ee.png?compress=1&resize=400x300'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Đỗ Tuấn Kiệt',
                              style: TextStyle(
                                //fontFamily: "Montserrat Medium",
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              'Số dư: 5,000,000đ',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                //fontFamily: "Montserrat Regular"
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: InkWell(
                            onTap: (){
                              //Navigator.pushNamed(context, '/getMoney');
                              Alert(
                                  context: context,
                                  title: "Mời nhập số tiền muốn rút",
                                  content: Column(
                                    children: [
                                      TextField(
                                        controller: myControllerAuction,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          icon: Icon(FontAwesomeIcons.moneyBillAlt),
                                          labelText: 'số tiền muốn rút',
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
                                          title: "Bạn có chắc muốn rút số tiền : " + myControllerAuction.text + " ?",
                                          buttons: [
                                            DialogButton(
                                              child: Text(
                                                "Xác nhận",
                                                style: TextStyle(color: Colors.white, fontSize: 20),
                                              ),
                                              onPressed: () {
                                                Navigator.pushNamed(context, '/getMoney');
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/show/265544/payment-method-cash.svg',
                                  height: 100,
                                ),
                                Text(
                                  'Rút tiền',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),

                        Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/addMoney');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/show/15483/money.svg',
                                  height: 100,
                                ),
                                Text(
                                  'Nạp tiền',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(child: Text('Lịch Sử Giao Dịch', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), height: 30,),
                  Container(
                    height: 250,
                    //color: Colors.amberAccent,
                    child: ListView(
                      children: listHis.map((his) {
                        return Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 120,
                            child: Card(
                              elevation: 4.0,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    (his.isGetMony as bool) ?
                                    SvgPicture.network(
                                      'https://www.svgrepo.com/show/265544/payment-method-cash.svg',
                                      height: 60,
                                    ) :
                                    SvgPicture.network(
                                      'https://www.svgrepo.com/show/15483/money.svg',
                                      height: 60,
                                    )
                                    ,
                                    SizedBox(width: 10,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Text("Loại giao dịch:                    " + (his.name as String), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                                        Text("Số tiền:                                 " + (his.money as String), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                                        Text("Ngày giao dịch:                 " + (his.date as String), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
