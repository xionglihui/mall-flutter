import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("testText"),
      ),
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.green),
          child: Column(
            children: [
              Text("你好吗", textAlign: TextAlign.start),
              Text(
                "我很好 " * 9,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Text(
                "你还好吗",
                textScaleFactor: 1.5,
              ),
              Text(
                "我很好 good",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                    height: 1.2,
                    fontFamily: "Courier",
                    background: Paint()..color = Colors.yellow,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(text: "网址:"),
                TextSpan(
                    text: "http://www.baidu.com",
                    style: TextStyle(color: Colors.blue))
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
