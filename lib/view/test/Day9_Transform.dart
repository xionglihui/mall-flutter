import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TransformTest"),
        ),
        body: Center(
            child: Column(
          children: [
            Container(
              color: Colors.black,
              child: Transform(
                alignment: Alignment.topRight,
                transform: new Matrix4.skewY(0.3),
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.deepOrange,
                  child: Text("你好吗"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 22),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: Transform.translate(
                  offset: Offset(-20, -5),
                  child: Text("Hello World"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 42),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: Transform.rotate(
                  angle: math.pi / 2,
                  child: Text("good  very day"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: Transform.scale(
                  scale: 1.2,
                  child: Text(" day day up"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text("lift no eay"),
                ),
              ),
            )
          ],
        )));
  }
}
