import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareDataWight extends InheritedWidget {
  static ShareDataWight of(BuildContext buildContext) {
    //定义一个便捷的方法，方便子树中的wight 获取共享数据
    return buildContext.dependOnInheritedWidgetOfExactType<ShareDataWight>();
  }

  final int data; //需要在再子树中共享的数据 ，保存点击次数

  ShareDataWight({@required this.data, Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(ShareDataWight oldWidget) {
    return oldWidget.data != data;
  }
}

class InheritedWidgetTest1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InheritedWidgetTestStatus();
}

class InheritedWidgetTestStatus extends State {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWight.of(context).data.toString());
  }
}

class InheritedWidgetTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InheritedWidgetTestStatue();
}

class InheritedWidgetTestStatue extends State {
  int data = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("InheritedWidgetTest"),
        ),
        body: Center(
          child: ShareDataWight(
            data: data,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: InheritedWidgetTest1(),
                ),
                RaisedButton(
                  child: Text(
                    "onclick",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () => {
                    setState(() {
                      ++data;
                    })
                  },
                )
              ],
            ),
          ),
        ));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
