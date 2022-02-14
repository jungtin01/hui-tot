
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flur_04022022/views/login_screen/login.dart';
import 'package:flur_04022022/views/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  int indexCurrent;
  NavBar(this.indexCurrent);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.indexCurrent;
  }

  // void setIndexMovePage(index){
  //   if(index == widget.indexCurrent){
  //
  //   }else if(index == 0){
  //     Navigator.of(context)
  //         .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
  //   }else if(index == 1){
  //     Navigator.pushReplacementNamed(context, '/home');
  //   }else if(index == 2){
  //     Navigator.pushReplacementNamed(context, '/register');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return CustomNavigationBar(
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
    );
  }
}
