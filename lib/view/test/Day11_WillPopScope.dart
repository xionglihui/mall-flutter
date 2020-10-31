import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WillPopScopeTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WillPopScopeTestStatue();
}

class WillPopScopeTestStatue extends State {

  DateTime lastPressdAt;//上次点击时间

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: WillPopScope(
        onWillPop: ()async {
          if(lastPressdAt==null ||DateTime.now().difference(lastPressdAt)>Duration(seconds: 1)){
            lastPressdAt=DateTime.now();
            return false;
          }
          return true;
        },
        child: Container(
          alignment: Alignment.center,
          child: Text("1秒内连续按两次返回键退出"),
        ),
      ),
    );
  }
}
