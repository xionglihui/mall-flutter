import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom",
          style: TextStyle(fontSize: 12, color: Colors.red),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton.icon(
              icon: Icon(Icons.send),
              label: Text("RaisedButton"),
              textColor: Colors.yellow,
              onPressed: () {},
            ),
            FlatButton.icon(
              icon: Icon(Icons.add),
              label: Text("FlatButton"),
              onPressed: () => {},
            ),
            OutlineButton.icon(
              icon: Icon(Icons.info),
              label: Text("OutlineButton"),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.thumb_down),
              onPressed: () => {},
            ),
            FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],//按下的是的颜色
              colorBrightness:Brightness.dark ,//按钮主题颜色，默认是浅色主题
              splashColor: Colors.red[500],//按钮点击时的 水波动画中水波的颜色
              child: Text("commit"),
              onPressed: ()=>{},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),//外形
            )
          ],
        ),
      ),
    );
  }
}
