import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWallet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>HomeWalletState();
}

class HomeWalletState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("钱包"),
      ),
    );
  }
}
