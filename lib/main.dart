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
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class myhomesibpakorn extends StatefulWidget {
  @override
  _myhomesibpakornState createState() => _myhomesibpakornState();
}

class _myhomesibpakornState extends State<myhomesibpakorn> {
//กลุ่มข้อมูล
  List<equipmentmenu> menu = [
    equipmentmenu("มีด", "100000"),
    equipmentmenu("ขวาน", "1050000"),
    equipmentmenu("เลื่อยตัดไม้", "405600"),
    equipmentmenu("เลื่อยตัดเหล็ก", "1500000"),
  ];

//เเสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกอุปกรณ์"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              equipmentmenu equipment = menu[index];
              return ListTile(
                title: Text(
                  equipment.name,
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("ราคา" + equipment.price + "บาท"),
              );
            }));
  }
}
