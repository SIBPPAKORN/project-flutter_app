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
    equipmentmenu("มีด", "100000", "assets/images/picture1.jpg"),
    equipmentmenu("ขวาน", "1050000", "assets/images/picture4.jpg"),
    equipmentmenu("เลื่อยตัดไม้", "405600", "assets/images/picture2.jpg"),
    equipmentmenu("เลื่อยตัดเหล็ก", "1500000", "assets/images/picture3.jpg"),
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
                leading: Image.asset(equipment.img),
                title: Text(
                  equipment.name,
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("ราคา" + equipment.price + "บาท"),
                onTap: () {
                  print("คุณเลือกอุปกรณ์ชื่อว่า" + equipment.name);
                },
              );
            }));
  }
}
