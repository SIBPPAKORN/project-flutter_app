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
    return Scaffold(
      appBar: AppBar(
        title: Text("โปรเเกรมนับเลขนะจ้ะ"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("กดปุ่มเพื่อเพิ่มจำนวนตัวเลข"),
            Text(
              number.toString(),
              style: TextStyle(fontSize: 60),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
