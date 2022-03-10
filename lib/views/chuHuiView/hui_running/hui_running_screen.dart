import 'package:flur_04022022/views/chuHuiView/hui_running/list_hui_running.dart';
import 'package:flur_04022022/views/chuHuiView/waiting_to_start/waiting_to_start.dart';
import 'package:flutter/material.dart';

class RunningHui extends StatelessWidget {
  const RunningHui({Key? key}) : super(key: key);

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
      body: Container(
          color: Color(0xFFC2DBC9),
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('Danh sách hụi đang chạy', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),),
              ),
              ListHuiRunning()
            ],
          )
      ),
    );
  }
}
