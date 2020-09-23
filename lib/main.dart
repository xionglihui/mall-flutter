import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  task();
  Future.delayed(Duration(seconds: 2), () {
    return "hellow word";
  })
      .then((value) => print(value))
      .catchError((e) => print(e))
      .whenComplete(() => {});
  Future.wait([
    Future.delayed(Duration(seconds: 2), () {
      return "nihao";
    }),
    Future.delayed(Duration(seconds: 2), () {
      return " ma";
    })
  ]).then((value) => {print(value[0] + "" + value[1])});

  Stream.fromFutures([
    Future.delayed(Duration(seconds: 2), () {
      return "nihao";
    }),
  ]).listen((event) {}).onDone(() {});
}

task() async {
  int id1 = await Future.delayed(Duration(seconds: 1), () {
    return 1;
  });

  int id2 = id1 + await Future.delayed(Duration(seconds: 1), () {
        return 2;
      });

  print(id1+id2);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Demo"),
        ),
        body: new Center(
          child: new Text("你好吗"),
        ),
      ),
    );
  }
}
