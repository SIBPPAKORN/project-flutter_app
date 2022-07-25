import 'dart:html';

import 'package:flutter/material.dart';
import 'equipmentmenu.dart';

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
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(25)),
                height: 130,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "ยอดคงเหลือ",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        "1000000",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25)),
                height: 130,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "รายรับ",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        "500000",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(25)),
                height: 130,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "รายจ่าย",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        "400000",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
