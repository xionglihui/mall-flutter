import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeMe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeMeStatue();
}

class HomeMeStatue extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("我的"),
      ),
    );
  }
}
