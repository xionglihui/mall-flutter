import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackOrPositionedTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("StackOrPositionedTest"),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [

              Positioned(
                left: 18,
                child: Text("goods"),
              ),
              Container(
                child: Text(
                  "Hello word",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
              Positioned(
                top: 18,
                child: Text(" henhao "),
              )
            ],
          ),
        ));
  }
}
