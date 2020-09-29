import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:mall_flutter/Day1_Future.dart';
import 'package:mall_flutter/Day2_Route.dart';
import 'package:mall_flutter/Day3_Widget_Intro.dart';
import 'package:mall_flutter/Day4_Status.dart';
import 'package:mall_flutter/Day4_Text.dart';
import 'package:mall_flutter/Day5_Buttom.dart';

void main() {
  runApp(MyApp());
  futureTest();
  task();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          //onGenerateRoute 全局的路由跳转前置处理逻辑
          String routeName = settings.name;
          if (routeName == "MyTests") {
            return MyTests(title: "MyTests");
          }
        });
      },
      routes: {
        "/": (context) => HomePage(), //首页注册路由
        // "MyTests":(context) =>MyTests(),
        "Echo": (context) => Echo(
              text: "你还好吗？",
              backgroundColor: Colors.red,
            ),
        "TapboxA": (context) => TapboxA(),
        "ParentWidget": (context) => ParentWidget(),
        "TextTest": (context) => TextTest(),
        "BottomTest":(context)=>BottomTest(),
        "MyParamsRoute": (context) => MyParamsRoute(
            text: ModalRoute.of(context).settings.arguments), //注册路由传参
      },
      // home: new HomePage(), //首页
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final num = WordPair.random();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("你好吗"),
            Text(num.toString()),
            FlatButton(
              child: Text("Bottom"),
              onPressed: ()=>Navigator.pushNamed(context, "BottomTest"),
            ),
            FlatButton(
              child: Text("TextTest"),
              onPressed: () => {Navigator.pushNamed(context, "TextTest")},
            ),
            FlatButton(
              onPressed: () => {Navigator.pushNamed(context, "Echo")},
              child: new Text("StatelessWidget"),
            ),
            FlatButton(
              child: Text("Status"),
              onPressed: () => Navigator.pushNamed(context, "TapboxA"),
            ),
            FlatButton(
              child: Text("ParentWidget"),
              onPressed: () => Navigator.pushNamed(context, "ParentWidget"),
            ),
            Image.asset("assets/images/rbt_main_main_checked.png"),
            //图片加载 在pubspec.yaml flutter节点配置 assets节点 如果加载报错 建议flutter clean 再运行

            FlatButton(
                onPressed: () {
                  //非命名路由跳转
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return MyTests(title: "ssss",);
                  // }));
                  // Navigator.pushNamed(context, "MyTests");
                  Navigator.of(context).pushNamed("MyTests", arguments: "ssss");
                },
                child: new Text("click me"))
          ],
        ),
      ),
    );
  }
}
