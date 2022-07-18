import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class myhomesibpakorn extends StatefulWidget {
  @override
  _myhomesibpakornState createState() => _myhomesibpakornState();
}

class _myhomesibpakornState extends State<myhomesibpakorn> {
  int number = 0; //การสร้าง state

//เเสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("โปรเเกรมนับเลขนะจ้ะ"),
      ),
      body: Center(
        child: ListView(
          children: getdata(10),
        ),
      ),
    );
  }

//เตรียมข้อมูล
  List<Widget> getdata(int count) {
    //กลุ่มข้อมูล text widget
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      data.add(Text(
        "รายการที่ ${i + 1}",
        style: TextStyle(fontSize: 30),
      ));
    }
    return data;
  }
}
