import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class GetMoneyScreen extends StatelessWidget {
  const GetMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nguồn tiền', style: TextStyle(fontSize: 18),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SvgPicture.network(
                              'https://www.svgrepo.com/show/249101/bank.svg',
                              height: 80,
                            ),
                            // ClipRRect(
                            //   borderRadius: BorderRadius.circular(100.0),
                            //     child: Image.asset(
                            //         'assets/huitot_loading.png',
                            //         //color: Colors.amberAccent,
                            //         height: 90,
                            //         width: 90,
                            //         fit:BoxFit.fitHeight
                            //   ),
                            // )
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                Text('  Hụi Tốt App', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                                SizedBox(height: 10,),
                                Text('5,000,000 đ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.amberAccent),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chi tiết giao dịch', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Ngân hàng nhận', style: TextStyle(fontSize: 16),),
                            SizedBox(height: 10,),
                            Text('Vietcombank', style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 8,0),
                          child: Divider(
                            height: 0.5,
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Chủ tài khoản', style: TextStyle(fontSize: 16),),
                            SizedBox(height: 10,),
                            Text('Nguyễn Văn A', style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 8,0),
                          child: Divider(
                            height: 0.5,
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Số điện thoại', style: TextStyle(fontSize: 16),),
                            SizedBox(height: 10,),
                            Text('090-678-123', style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 8,0),
                          child: Divider(
                            height: 0.5,
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Số tiền', style: TextStyle(fontSize: 16),),
                            SizedBox(height: 10,),
                            Text('2,000,000đ', style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 8,0),
                          child: Divider(
                            height: 0.25,
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Phí giao dịch', style: TextStyle(fontSize: 16),),
                            SizedBox(height: 10,),
                            Text('Miễn phí', style: TextStyle(fontSize: 16),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(5, 0),
                    )
                  ]
              ),
              child: TextButton(
                onPressed: (){
                  Alert(
                    context: context,
                    type: AlertType.success,
                    title: "Thành công",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "Xác nhận",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        width: 120,
                      )
                    ],
                  ).show();
                },
                child: Text('Xác nhận', style: TextStyle(color: Colors.white),),

              ),
            )
          ],
        ),
      ),
    );
  }
}
