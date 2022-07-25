import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  int number = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getexchangerate();
  }

  Future<void> getexchangerate() async {
    var url = "https://api.exchangeratesapi.io/latest?symbols=USD,THB";
    var response = await http.get(url);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    print("เรียกใช้งาน build");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "อัตราการเเลกเปลี่ยนสกุลเงิน",
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: []),
    );
  }
}
