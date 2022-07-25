import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//สร้าง container ต้นเเบบ
class moneybox extends StatelessWidget {
  String title; //ชื่อหมวดหมูา /รายการ
  double amount; //จำนวนเงิน
  Color color; //สีของกล่อง
  double size; //ขนาดของกล่อง

  moneybox(this.title, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(25)),
      height: size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              '${NumberFormat("#,###.##").format(amount)}',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
