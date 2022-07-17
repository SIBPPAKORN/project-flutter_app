import 'package:flutter/material.dart';

void main() {
  var app = runApp(app);
}

class sibpakornapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    returnMaterialApp(
      title: "sibpakorn app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello flutter นะจ้ะ"),
        ),
        body: Text("สวัสดีครับขอต้อนรับเข้าสู้เเอปดีๆไม่มีไม่ได้เเล้ว"),
      ),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}
