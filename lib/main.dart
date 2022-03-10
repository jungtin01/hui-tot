import 'package:flur_04022022/views/addMoney_screen/addMoney.dart';
import 'package:flur_04022022/views/chuHuiView/chu_hui_home.dart';
import 'package:flur_04022022/views/chuHuiView/getMoney_screen/get_money.dart';
import 'package:flur_04022022/views/chuHuiView/hui_running/hui_running_info.dart';
import 'package:flur_04022022/views/chuHuiView/hui_running/hui_running_screen.dart';
import 'package:flur_04022022/views/chuHuiView/openHui/open_hui.dart';
import 'package:flur_04022022/views/chuHuiView/waiting_to_start/hui_waiting_info.dart';
import 'package:flur_04022022/views/chuHuiView/waiting_to_start/waiting_screen.dart';
import 'package:flur_04022022/views/chuHuiView/wallet/wallet.dart';
import 'package:flur_04022022/views/discovery_srceen/discovery.dart';
import 'package:flur_04022022/views/infoHui_screen/infoHui.dart';
import 'package:flur_04022022/views/login_screen/login.dart';
import 'package:flur_04022022/views/main_screen/main_screen.dart';
import 'package:flur_04022022/views/personal_info_screen/personal_info.dart';
import 'package:flur_04022022/views/register_screen/register.dart';
import 'package:flur_04022022/views/slash_screen/slash.dart';
import 'package:flur_04022022/views/test.dart';
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
        fontFamily: 'Poppins',
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
        '/personalInfo': (context) => PersonalInfo(),
        '/addMoney': (context) => AddMoney(),
        '/discovery': (context) => DiscoveryScreen(),
        '/test': (context) => Test(),
        '/homeChuHui': (context) => HomeScreenChuHui(),
        '/openHui' : (context) => OpenHui(),
        '/wallet' : (context) => WalletScreen(),
        '/getMoney' : (context) => GetMoneyScreen(),
        '/waitingStartHui' : (context) => WaitingHui(),
        '/waitingInfoHui' : (context) => HuiWaitingInfo(),
        '/runningHui' : (context) => RunningHui(),
        '/runningInfoHui' : (context) => HuiRunningInfo(),
      },
      //home: MyHomePage(),
    );
  }
}
