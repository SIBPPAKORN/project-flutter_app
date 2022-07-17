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
          child: Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2019/05/16/18/16/musician-4207759__340.png"),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}
