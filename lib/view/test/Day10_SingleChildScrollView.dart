import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewTest extends StatelessWidget {
  String str = "QWERTYUIOPASDFGHJKLZXCVBNM123456789";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SingleChildScrollViewTest"),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
              child: Center(
            child: Column(
                children: str
                    .split("")
                    .map((e) => Text(
                          e,
                          style: TextStyle(color: Colors.blue, fontSize: 22),
                        ))
                    .toList()),
          )),
        ));
  }
}
