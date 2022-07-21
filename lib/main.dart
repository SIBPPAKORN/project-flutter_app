import 'package:flutter/material.dart';
import 'foodmenu.dart';

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
  List<foodmenu> menu = [
    foodmenu("หมึกย่าง", "100"),
    foodmenu("ข้าว", "10"),
    foodmenu("ผัดผัก", "40"),
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
              foodmenu food = menu[index];
              return ListTile(
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("ราคา" + food.price + "บาท"),
              );
            }));
  }
}
