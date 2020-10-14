import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowOrColumnTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RowOrColumnTest"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("你好"),
              Text(
                " 我是大哥的小哥",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("王者实力"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: [Text("带你吃鸡")],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "hello",
                style: TextStyle(fontSize: 22, color: Colors.red),
              ),
              Text("word")
            ],
          )
        ],
      ),
    );
  }
}
