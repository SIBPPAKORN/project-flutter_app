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
          child: Text("สวัสดีครับขอต้อนรับสู่เเอปดีๆไม่มีไม่ได้เเล้ว"),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}
