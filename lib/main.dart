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

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    data.add(Text("กดปุ่มเพื่อเพิ่มจำนวนตัวเลข"));
    data.add(Text(
      number.toString(),
      style: TextStyle(fontSize: 60),
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text("โปรเเกรมนับเลขนะจ้ะ"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addnumber,
        child: Icon(Icons.ac_unit),
      ),
    );
  }

  void addnumber() {
    setState(() {
      number++;
    });
  }
}
