import 'package:flur_04022022/views/infoHui_screen/infoHui.dart';
import 'package:flur_04022022/views/login_screen/login.dart';
import 'package:flur_04022022/views/main_screen/main_screen.dart';
import 'package:flur_04022022/views/register_screen/register.dart';
import 'package:flur_04022022/views/slash_screen/slash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SlashPage(),
        '/home': (context) => MainPage(),
        '/register': (context) => RegisterPage(),
        '/login': (context) => LoginPage(),
        '/infoHui': (context) => InfoHui(),
      },
      //home: MyHomePage(),
    );
  }
}
