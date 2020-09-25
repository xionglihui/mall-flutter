import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Echo extends StatelessWidget {
  final String text;

  final Color backgroundColor;

  Echo({Key key, @required this.text, this.backgroundColor: Colors.green})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
       title: Text("Widget_Intro"),
     ),
      body:  Center(
        child: Container(
          color: backgroundColor,
          child: Text(text),
        ),
      )
    );

  }
}
