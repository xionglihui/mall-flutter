import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ContainerTest"),),
      body:Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 12,left: 120),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.red,Colors.orange],
                  center: Alignment.topLeft,
                  radius: 98
                ),
                boxShadow: [BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2,2),
                  blurRadius: 4.0
                )]
              ),
              transform: Matrix4.rotationZ(2),
              alignment: Alignment.center,
              child: Text("你好吗" ,style: TextStyle(color: Colors.white,fontSize: 40),),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.red,
              child: Text("大家好"),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color:Colors.orange,
              child: Text("才是真的好"),
            )
          ],
        ),
      )
    );
  }

}