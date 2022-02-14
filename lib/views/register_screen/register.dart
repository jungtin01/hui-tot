import 'dart:io';

import 'package:flur_04022022/views/register_screen/radio_gender.dart';
import 'package:flur_04022022/views/register_screen/text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List day = [];
  List month = [];
  List year = [];
  String ? valueDay;
  String ? valueMonth;
  String ? valueYear;
  int selectedValue = 1;

  void setDataForDate(){
    for(int i = 1; i<= 30; i++){
      day.add(i.toString());
    }
    for(int i = 1; i<= 12; i++){
      month.add(i.toString());
    }
    for(int i = 1960; i<= 2022; i++){
      year.add(i.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    setDataForDate();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        //height: size.height,
        height: double.infinity,
        color: Color(0xFFC2DBC9),
        padding: EdgeInsets.only(top: size.height * 0.1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/huitot_login.png', fit: BoxFit.cover),
              SizedBox(height: size.height * 0.07,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08),
                //padding: EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Chào mừng bạn đến với HuiTot', style: TextStyle(fontSize: 16),),
                    Text('Đăng kí tài khoản', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.04,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: TextFieldInfo('Tên đăng nhập'),
              ),
              SizedBox(height: size.height * 0.02,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: TextFieldInfo('Mật khẩu'),
              ),
              SizedBox(height: size.height * 0.02,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: TextFieldInfo('Xác nhận mật khẩu'),
              ),
              SizedBox(height: size.height * 0.02,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: TextFieldInfo('Họ và tên'),
              ),
              SizedBox(height: size.height * 0.02,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Ngày, tháng và năm sinh'),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0,5,0),
                          width: size.width * 0.24,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black)
                          ),
                          child: DropdownButton(
                              hint: Text('Ngày'),
                              value: valueDay,
                              items: day.map((e) {
                                return DropdownMenuItem(
                                    value: e,
                                    child: Text(e)
                                );
                              }).toList(),
                              onChanged: (newValue){
                                setState(() {
                                  valueDay = newValue as String;
                                });
                              },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0,5,0),
                          width: size.width * 0.24,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black)
                          ),
                          child: DropdownButton(
                            hint: Text('Tháng'),
                            value: valueMonth,
                            items: month.map((e) {
                              return DropdownMenuItem(
                                  value: e,
                                  child: Text(e)
                              );
                            }).toList(),
                            onChanged: (newValue){
                              setState(() {
                                valueMonth = newValue as String;
                              });
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0,5,0),
                          width: size.width * 0.24,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black)
                          ),
                          child: DropdownButton(
                            hint: Text('Năm'),
                            value: valueYear,
                            items: year.map((e) {
                              return DropdownMenuItem(
                                  value: e,
                                  child: Text(e)
                              );
                            }).toList(),
                            onChanged: (newValue){
                              setState(() {
                                valueYear = newValue as String;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: DropDownDate(selectedValue),
              ),
              SizedBox(height: size.height * 0.02,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: TextFieldInfo('Số điện thoại'),
              ),
              SizedBox(height: size.height * 0.02,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: TextFieldInfo('Quê quán'),
              ),
              SizedBox(height: size.height * 0.02,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.08),
                child: TextFieldInfo('Địa chỉ thường trú'),
              ),
              SizedBox(height: size.height * 0.05,),
              ElevatedButton(
                onPressed: (){
                  sleep(const Duration(milliseconds: 500));
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Text('Đăng kí tài khoản'),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF04C35C),
                    minimumSize: Size(340,45)
                ),
              ),
              SizedBox(height: size.height * 0.02,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bạn đã có tài khoản? '),
                    TextButton(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        child: Text('Đăng nhập ngay', style: TextStyle(color: Color(0xFF2C5282)),)
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
