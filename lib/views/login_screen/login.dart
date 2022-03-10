import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(

        child: Container(
          width: size.width,
          height: size.height,
          color: Color(0xFFC2DBC9),
          padding: EdgeInsets.only(top: size.height * 0.1),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/huitot_login.png', fit: BoxFit.cover),
              SizedBox(height: size.height * 0.03,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.06),
                //padding: EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Chào mừng bạn trở lại', style: TextStyle(fontSize: 16),),
                    Text('Đăng nhập vào tài khoản', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.04,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Tên đăng nhập'),
                    SizedBox(height: 10,),
                    TextField(
                      controller: myController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text('Mật khẩu'),
                    SizedBox(height: 10,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        RoundCheckBox(onTap: (select){}, size: 20,),
                        SizedBox(width: 5,),
                        Text('Nhớ mật khẩu')
                      ],
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text('Quên mật khẩu ?', style: TextStyle(color: Color(0xFF2C5282))))
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02,),
              ElevatedButton(
                  onPressed: (){
                    sleep(const Duration(milliseconds: 500));
                    if(myController.text == 'chuhui'){
                      Navigator.pushReplacementNamed(context, '/homeChuHui');
                    }else{
                      Navigator.pushReplacementNamed(context, '/home');
                    }

                  },
                  child: Text('Đăng nhập'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF04C35C),
                    minimumSize: Size(340,45)
                  ),
              ),
              SizedBox(height: size.height * 0.01,),
              // ElevatedButton.icon(
              //   icon: FaIcon(FontAwesomeIcons.google),
              //   onPressed: (){},
              //   label: Text('Đăng nhập với google'),
              //   style: ElevatedButton.styleFrom(
              //       primary: Color(0xFF2D3748),
              //       minimumSize: Size(340,45)
              //   ),
              // ),
              // SizedBox(height: size.height * 0.02,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bạn chưa có tài khoản? '),
                    TextButton(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, '/register');
                        },
                        child: Text('Đăng kí ngay', style: TextStyle(color: Color(0xFF2C5282)),)
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
