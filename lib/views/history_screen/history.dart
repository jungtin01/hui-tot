import 'package:carousel_slider/carousel_slider.dart';
import 'package:flur_04022022/models/history.dart';
import 'package:flur_04022022/views/const_style/const.dart';
import 'package:flur_04022022/views/history_screen/column_history.dart';
import 'package:flutter/material.dart';

class HistoryTrade extends StatelessWidget {
  const HistoryTrade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List listMonth = [
      'Toàn bộ',
      'tháng 1',
      'tháng 2',
      'tháng 3',
      'tháng 4',
      'tháng 5',
      'tháng 6',
      'tháng 7',
      'tháng 8',
      'tháng 9',
      'tháng 10',
      'tháng 11',
      'tháng 12',
    ];

    List<History> historyList = [
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Ngô Hoàng Nam',
          soTienGop: 'Góp - Kỳ 12: 300,000đ',
          checkState: 1),
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Lê Thị Kim',
          soTienGop: 'Góp - Kỳ 12: 300,000đ',
          checkState: 1),
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Nữ Ngọc Thánh Tôn',
          soTienGop: 'Góp trễ - Kỳ 12: 300,000đ',
          checkState: 2),
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Hoàng Xuân Diệu',
          soTienGop: 'Hốt hụi - Kỳ 12: 300,000đ',
          checkState: 3),
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Ngô Hoàng Nam',
          soTienGop: 'Góp - Kỳ 12: 300,000đ',
          checkState: 1),
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Lê Thị Kim',
          soTienGop: 'Góp - Kỳ 12: 300,000đ',
          checkState: 1),
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Nữ Ngọc Thánh Tôn',
          soTienGop: 'Góp trễ - Kỳ 12: 300,000đ',
          checkState: 2),
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Hoàng Xuân Diệu',
          soTienGop: 'Hốt hụi - Kỳ 12: 300,000đ',
          checkState: 3),
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Ngô Hoàng Nam',
          soTienGop: 'Góp - Kỳ 12: 300,000đ',
          checkState: 1),
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Lê Thị Kim',
          soTienGop: 'Góp - Kỳ 12: 300,000đ',
          checkState: 1),
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Nữ Ngọc Thánh Tôn',
          soTienGop: 'Góp trễ - Kỳ 12: 300,000đ',
          checkState: 2),
      History(
          ngayGop: '02/03/20',
          nguoiGop: 'Hoàng Xuân Diệu',
          soTienGop: 'Hốt hụi - Kỳ 12: 300,000đ',
          checkState: 3),
    ];

    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 5.0,
                enlargeCenterPage: true,
              ),
              items: listMonth.map((month) {
                return SizedBox(
                  width: 360,
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        month,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16,8,16,8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ngày góp', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text('Người góp', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),),
                ),
                Text('Số tiền góp', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),)
              ],
            ),
          ),
          Container(
            child: Column(
              children: historyList.map((user) {
                return ColumnHistory(user);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
