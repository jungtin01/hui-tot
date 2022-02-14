import 'package:custom_navigation_bar/custom_navigation_bar.dart';
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
    childPage = [
      Test(),
      MyHomePage(),
      Personal()
    ];
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
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12
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
      body: childPage[_currentIndex],
      bottomNavigationBar: Container(
          padding: EdgeInsets.fromLTRB(50, 0, 50 , 15),
          height: 60,
          decoration: BoxDecoration(
              color: Color(0xFF089C44)
            //color: Colors.amber
          ),
          child: CustomNavigationBar(
            iconSize: 30.0,
            selectedColor: Color(0xFF089C44),
            strokeColor: Color(0x300c18fb),
            unSelectedColor: Colors.grey[600],
            backgroundColor: Colors.white,
            borderRadius: Radius.circular(20.0),
            items: [
              CustomNavigationBarItem(
                icon: Icon(Icons.remove_red_eye_outlined),
              ),
              CustomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
              ),
              CustomNavigationBarItem(
                icon: Icon(Icons.person_outline),
              ),
            ],
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                //setIndexMovePage(_currentIndex);
              });
            },
            isFloating: true,
          )
      ),
    );
  }
}