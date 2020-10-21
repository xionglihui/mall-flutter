import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:mall_flutter/Day1_Future.dart';
import 'package:mall_flutter/Day2_Route.dart';
import 'package:mall_flutter/Day3_Widget_Intro.dart';
import 'package:mall_flutter/Day4_Status.dart';
import 'package:mall_flutter/Day4_Text.dart';
import 'package:mall_flutter/Day5_Buttom.dart';
import 'package:mall_flutter/Day5_Checked.dart';
import 'package:mall_flutter/Day5_Image.dart';
import 'package:mall_flutter/Day6_Progress.dart';
import 'package:mall_flutter/Day6_TextFiled.dart';
import 'package:mall_flutter/Day6_TextFormField.dart';
import 'package:mall_flutter/Day7_Flex.dart';
import 'package:mall_flutter/Day7_Row_Column.dart';
import 'package:mall_flutter/Day8_Align.dart';
import 'package:mall_flutter/Day8_Box.dart';
import 'package:mall_flutter/Day8_DecoratedBox.dart';
import 'package:mall_flutter/Day8_Padding.dart';
import 'package:mall_flutter/Day8_StackOrPositioned.dart';
import 'package:mall_flutter/Day8_Wrap.dart';
import 'package:mall_flutter/Day9_Container.dart';
import 'package:mall_flutter/Day9_Scaffold_TabBar.dart';
import 'package:mall_flutter/Day9_Transform.dart';

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
        "ScaffoldTabBarTest": (context) => ScaffoldTabBarTest(),
        "ContainerTest": (context) => ContainerTest(),
        "TransformTest": (context) => TransformTest(),
        "DecoratedBoxTest": (context) => DecoratedBoxTest(),
        "BoxTest": (context) => BoxTest(),
        "PaddingTest": (context) => PaddingTest(),
        "AlignTest": (context) => AlignTest(),
        "StackOrPositionedTest": (context) => StackOrPositionedTest(),
        "WarpTest": (context) => WarpTest(),
        "CheckTest": (context) => CheckTest(),
        "FlexTest": (context) => FlexTest(),
        "TapboxA": (context) => TapboxA(),
        "ProgressTest": (context) => ProgressTest(),
        "ParentWidget": (context) => ParentWidget(),
        "TextTest": (context) => TextTest(),
        "BottomTest": (context) => BottomTest(),
        "TextFiledTest": (context) => TextFiledTest(),
        "TextFormFieldTest": (context) => TextFormFieldTest(),
        "ImageTest": (context) => ImageTest(),
        "RowOrColumnTest": (context) => RowOrColumnTest(),
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
          centerTitle: true,
          backgroundColor: Color.fromRGBO(255,149,30,1),
        ),

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "ScaffoldTabBarTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, "ScaffoldTabBarTest"),
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "ContainerTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () =>
                      {Navigator.pushNamed(context, "ContainerTest")},
                ),
                FlatButton(
                  child: Text(
                    "TransformTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () =>
                      {Navigator.pushNamed(context, "TransformTest")},
                ),
                FlatButton(
                  child: Text(
                    "DecoratedBoxTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () =>
                      Navigator.pushNamed(context, "DecoratedBoxTest"),
                ),
                FlatButton(
                  child: Text(
                    "BoxTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () => Navigator.pushNamed(context, "BoxTest"),
                ),
                FlatButton(
                  child: Text(
                    "PaddingTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () => Navigator.pushNamed(context, "PaddingTest"),
                ),
                FlatButton(
                  child: Text(
                    "StackOrPositionedTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () =>
                      {Navigator.pushNamed(context, "StackOrPositionedTest")},
                ),
                FlatButton(
                  child: Text(
                    "AlignTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => {Navigator.pushNamed(context, "AlignTest")},
                  color: Colors.blue,
                ),
                FlatButton(
                  child: Text(
                    "WarpTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () => {Navigator.pushNamed(context, "WarpTest")},
                ),
                FlatButton(
                  child: Text(
                    "FlexTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () => {
                    Navigator.pushNamed(context, "FlexTest"),
                  },
                ),
                FlatButton(
                  child: Text(
                    "RowOrColumnTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () =>
                      {Navigator.pushNamed(context, "RowOrColumnTest")},
                ),
                FlatButton(
                  child: Text(
                    "Checked",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () => Navigator.pushNamed(context, "CheckTest"),
                ),
                FlatButton(
                  child: Text(
                    "ProgressTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () => Navigator.pushNamed(context, "ProgressTest"),
                ),
                FlatButton(
                  child: Text(
                    "TextFormFieldTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () =>
                      Navigator.pushNamed(context, "TextFormFieldTest"),
                ),
                FlatButton(
                  child: Text("TextFiledTest",
                      style: TextStyle(color: Colors.white)),
                  color: Colors.blue,
                  onPressed: () =>
                      Navigator.pushNamed(context, "TextFiledTest"),
                ),
                FlatButton(
                  child: Text(
                    "ImageTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () => Navigator.pushNamed(context, "ImageTest"),
                ),
                FlatButton(
                  child: Text("Bottom"),
                  onPressed: () => Navigator.pushNamed(context, "BottomTest"),
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
                      Navigator.of(context)
                          .pushNamed("MyTests", arguments: "ssss");
                    },
                    child: new Text("click me"))
              ],
            ),
          ),
        ));
  }
}
