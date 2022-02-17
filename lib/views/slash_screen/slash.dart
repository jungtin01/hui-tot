import 'dart:async';

import 'package:flur_04022022/views/login_screen/login.dart';
import 'package:flutter/material.dart';

class SlashPage extends StatefulWidget {
  const SlashPage({Key? key}) : super(key: key);

  @override
  _SlashPageState createState() => _SlashPageState();
}

class _SlashPageState extends State<SlashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC2DBC9),
      body: Center(
        child: Image.asset(
          'assets/huitot_loading.png',
          height: 120,

        ),
      ),
    );
  }
}
