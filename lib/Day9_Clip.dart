import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipTest extends StatelessWidget {
  Widget avatar = Image.asset(
    "assets/images/ic_launcher.png",
    width: 60,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipTest"),
      ),
      body: Center(
        child: Column(
          children: [
            avatar, //不裁剪
            ClipOval(
              child: avatar, //裁剪为圆形
            ),
            ClipRRect(
              child: avatar,
              borderRadius: BorderRadius.circular(8),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  child: avatar,
                  widthFactor: .5,
                  alignment: Alignment.topLeft,
                ),
                Text(
                  "你好吗",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRect(
                  child: Align(
                    child: avatar,
                    widthFactor: .5,
                    alignment: Alignment.topLeft,
                  ),
                ),
                Text(
                  "你好吗",
                  style: TextStyle(color: Colors.green),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
