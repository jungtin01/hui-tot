import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreenChuHui extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenChuHui> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    // style
    var cardTextStyle = TextStyle(
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            color: mainColor,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //       alignment: Alignment.topCenter,
            //       image: AssetImage('assets/images/top_header.png')),
            // ),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Đỗ Tuấn Kiệt',
                                  style: TextStyle(
                                      //fontFamily: "Montserrat Medium",
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                SizedBox(width: 110,),
                                TextButton.icon(
                                    onPressed: (){
                                      Navigator.pushReplacementNamed(context, '/login');
                                    },
                                    icon: Icon(FontAwesomeIcons.signOutAlt, color: Colors.white,),
                                    label: Text(''),
                                )
                              ],
                            ),
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
                              Navigator.pushNamed(context, '/openHui');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/show/100952/open.svg',
                                  height: 128,
                                ),
                                Text(
                                  'Mở hụi',
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
                              Navigator.pushNamed(context, '/waitingStartHui');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/show/219574/stopwatch-wait.svg',
                                  height: 128,
                                ),
                                Text(
                                  'Hụi đang chờ bắt đầu',
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
                              Navigator.pushNamed(context, '/runningHui');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/show/246764/money-cash.svg',
                                  height: 128,
                                ),
                                Text(
                                  'Hụi đang chạy',
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
                              Navigator.pushNamed(context, '/wallet');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/show/285889/wallet-cash.svg',
                                  height: 128,
                                ),
                                Text(
                                  'Ví của tôi',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
