import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProviderTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProviderTestStatue();
}

class ProviderTestStatue extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProviderTest"),
      ),
    );
  }
}
