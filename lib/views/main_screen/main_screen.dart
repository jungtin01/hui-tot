import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flur_04022022/views/discovery_srceen/discovery.dart';
import 'package:flur_04022022/views/home_screen/home.dart';
import 'package:flur_04022022/views/person_screen/person.dart';
import 'package:flur_04022022/views/test.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 1;
  List childPage = [];

  @override
  void initState() {
    childPage = [MyHomePage(), DiscoveryScreen(), Personal()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/huitot_logo2.png', fit: BoxFit.cover),
        backgroundColor: Color(0xFF089C44),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    "Do Tuan Kiet",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  ),
                ),
                PopupMenuButton(
                    child: CircleAvatar(
                      child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/147/147144.png"),
                    ),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem<int>(
                          value: 0,
                          child: Text("Thông báo"),
                        ),
                        PopupMenuItem<int>(
                          value: 1,
                          child: Text('Đăng xuất'),
                        ),
                      ];
                    },
                    onSelected: (value) {
                      if (value == 0) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 16,
                              child: Container(
                                height: 400,
                                child: ListView(
                                  shrinkWrap: true,
                                  children: <Widget>[
                                    SizedBox(height: 20),
                                    Center(child: Text('Thông báo', style: TextStyle(fontWeight: FontWeight.w700),)),
                                    SizedBox(height: 20),
                                    _buildRow(
                                        'assets/choc.png', 'Kêu hụi thành công', 'ngày 2/9'),
                                    _buildRow(
                                        'assets/choc.png', 'Kêu hụi thành công', 'ngày 2/9'),
                                    _buildRow(
                                        'assets/choc.png', 'Kêu hụi thành công', 'ngày 2/9'),
                                    _buildRow(
                                        'assets/choc.png', 'Bạn được duyệt vào hụi thành công', 'ngày 2/9'),
                                    _buildRow(
                                        'assets/choc.png', 'Bạn được duyệt vào hụi thành công', 'ngày 2/9'),
                                    _buildRow(
                                        'assets/choc.png', 'Bạn được duyệt vào hụi thành công', 'ngày 2/9'),
                                    _buildRow(
                                        'assets/choc.png', 'Bạn được duyệt vào hụi thành công', 'ngày 2/9'),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      } else if (value == 1) {
                        Navigator.pushReplacementNamed(context, '/login');
                      }
                    }),
                // TextButton(
                //   onPressed: () {},
                //   child: CircleAvatar(
                //     child: Image.network(
                //         "https://cdn-icons-png.flaticon.com/512/147/147144.png"),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
      body: childPage[_currentIndex],
      bottomNavigationBar: Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
          height: 60,
          decoration: BoxDecoration(color: Color(0xFF089C44)
              //color: Colors.amber
              ),
          child: CustomNavigationBar(
            iconSize: 20.0,
            selectedColor: Color(0xFF089C44),
            strokeColor: Color(0x300c18fb),
            unSelectedColor: Colors.grey[600],
            backgroundColor: Colors.white,
            borderRadius: Radius.circular(20.0),
            items: [
              CustomNavigationBarItem(
                  icon: Icon(Icons.notifications), title: Text('Thông báo')),
              CustomNavigationBarItem(
                  icon: Icon(Icons.find_in_page_outlined),
                  title: Text('Tìm kiếm')),
              CustomNavigationBarItem(
                  icon: Icon(Icons.money_sharp), title: Text('Danh sách hụi')),
            ],
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                //setIndexMovePage(_currentIndex);
              });
            },
            isFloating: true,
          )),
    );
  }
}

Widget _buildRow(String imageAsset, String name, String score) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: <Widget>[
        SizedBox(height: 12),
        Container(height: 2, color: Colors.redAccent),
        SizedBox(height: 12),
        Row(
          children: <Widget>[
            //CircleAvatar(backgroundImage: AssetImage(imageAsset)),
            SizedBox(width: 12),
            Container(
                child: Text(name),
              width: 100,
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.yellow[900],
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text('$score'),
            ),
          ],
        ),
      ],
    ),
  );
}
