import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flur_04022022/views/discovery_srceen/list_hui.dart';
import 'package:flur_04022022/views/infoHui_screen/list_member.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({Key? key}) : super(key: key);

  @override
  _DiscoveryScreenState createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  final _formatter = NumberFormat('#,###,000');
  double _lowValue = 2055000;
  double _highValue = 72000000;
  String ? valuePeople;
  String ? valueDay;
  String ? valueTmp;

  List<String> listAmountPeople = ['12 người', '8 người', '6 người'];
  List<String> listDay = ['5 ngày/kỳ' , '7 ngày/kỳ' ,'30 ngày/kỳ'];
  List<String> listTmp = ['Có lãi', 'Không lãi'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            child: const Text(
              'Khám phá',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.white, width: 2)
              )
            ),
          ),
          SizedBox(height: 18,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(16.0,0,16,0),
                      padding: const EdgeInsets.only(top: 7),
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Text(_formatter.format(_lowValue).toString() + 'đ', style: TextStyle(fontSize: 20, color: Color(0xFF887638), fontWeight: FontWeight.bold, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                    ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16.0,0,16,0),
                    padding: const EdgeInsets.only(top: 7),
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Text(_formatter.format(_highValue).toString()+ 'đ', style: TextStyle(fontSize: 20, color: Color(0xFF887638), fontWeight: FontWeight.bold, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50,0,50,0),
                child: RangeSlider(
                    min: 0,
                    max: 100000000,
                    divisions: 1000,
                    activeColor: Colors.white,
                    inactiveColor: Color(0xFF66C28B),
                    values: RangeValues(_lowValue,_highValue),
                    onChanged: (_range){
                      setState(() {
                        _lowValue = _range.start;
                        _highValue = _range.end;
                      });
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1,000,000đ', style: TextStyle(color: Colors.white),),
                    Text('100,000,000đ', style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(15,0,5,0),
                      width: MediaQuery.of(context).size.width * 0.27,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white)
                      ),
                      child: DropdownButton(
                          hint: Text(listAmountPeople[0], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          value: valuePeople ,
                          dropdownColor: mainColor,
                          icon: Icon(Icons.keyboard_arrow_down_sharp),
                          iconEnabledColor: Colors.white,
                          items: listAmountPeople.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: Text(e, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            );
                          }).toList(),
                          onChanged: (newValue){
                            setState(() {
                              valuePeople = newValue as String;
                            });
                          }
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0,0,0),
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white)
                      ),
                      child: DropdownButton(
                          hint: Text(listDay[0], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          value: valueDay,
                          icon: Icon(Icons.keyboard_arrow_down_sharp),
                          iconEnabledColor: Colors.white,
                          dropdownColor: mainColor,
                          items: listDay.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: Text(e, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                            );
                          }).toList(),
                          onChanged: (newValue){
                            setState(() {
                              valueDay = newValue as String;
                            });
                          }
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,0,0,0),
                      width: MediaQuery.of(context).size.width * 0.27,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white)
                      ),
                      child: DropdownButton(
                          hint: Text(listTmp[0], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          value: valueTmp,
                          icon: Icon(Icons.keyboard_arrow_down_sharp),
                          iconEnabledColor: Colors.white,
                          dropdownColor: mainColor,
                          items: listTmp.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: Text(e, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                            );
                          }).toList(),
                          onChanged: (newValue){
                            setState(() {
                              valueTmp = newValue as String;
                            });
                          }
                      ),
                    )
                  ],
                ),
              ),
              ListHui()
            ],
          )
        ],
      ),
    );
  }
}
