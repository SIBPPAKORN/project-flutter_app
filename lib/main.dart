import 'package:flutter/material.dart';
import 'moneyBox.dart';

void main() {
  runApp(sibpakornapp());
}

//สร้างwidget
class sibpakornapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "sibpakorn app",
      home: myhomesibpakorn(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class myhomesibpakorn extends StatefulWidget {
  @override
  _myhomesibpakornState createState() => _myhomesibpakornState();
}

class _myhomesibpakornState extends State<myhomesibpakorn> {
//เเสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "บัญชีของผม",
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              moneybox("ยอดคงเหลือ", 1000000, Colors.orange, 130),
              SizedBox(
                height: 5,
              ),
              moneybox("รายรับ", 600000, Colors.pink, 130),
              SizedBox(
                height: 5,
              ),
              moneybox("รายจ่าย", 99, Colors.red, 130),
              SizedBox(
                height: 5,
              ),
              moneybox("ยอดค้างชำระ", 0.1, Colors.blue, 130),
            ],
          ),
        ));
  }
}
