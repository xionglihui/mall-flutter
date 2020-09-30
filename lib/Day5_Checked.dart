import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CheckTestState();
}

class CheckTestState extends State<CheckTest> {

  bool switchSelected = true;
  bool checkboxSeleted = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckTestStatue"),
      ),
      body: Column(
        children: <Widget>[
          Switch(
              value: switchSelected,
              onChanged: (value) {
                setState(() {
                  switchSelected = value;
                });
              }),
          Checkbox(
            value: checkboxSeleted,
            activeColor: Colors.red,
            onChanged: (value) {
              setState(() {
                checkboxSeleted = value;
              });
            },
          )
        ],
      ),
    );
  }
}
