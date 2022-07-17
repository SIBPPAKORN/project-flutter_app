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
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello flutter นะจ้ะ"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("สวัสดีครับขอต้อนรับแอปดีๆไม่มีไม่ได้เเล้ว"),
              Text("hello flutter"),
              Text("hellodart"),
            ],
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}
