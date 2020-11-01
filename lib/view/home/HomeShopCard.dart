import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeShopCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeShopCardSatue();
}

class HomeShopCardSatue extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("购物车"),
      ),
    );
  }
}
