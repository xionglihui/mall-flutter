import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(255, 149, 30, 1),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "ProviderTest",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "InheritedWidgetTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () =>
                      {Navigator.pushNamed(context, "InheritedWidgetTest")},
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "WillPopScopeTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () =>
                      {Navigator.pushNamed(context, "WillPopScopeTest")},
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "ScrollControllerTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () =>
                      {Navigator.pushNamed(context, "ScrollControllerTest")},
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "CustomScrollViewTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, "CustomScrollViewTest"),
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "GridViewTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => Navigator.pushNamed(context, "GridViewTest"),
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "ListViewTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () =>
                      {Navigator.pushNamed(context, "ListViewTest")},
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "SingleChildScrollViewTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => {
                    Navigator.pushNamed(context, "SingleChildScrollViewTest"),
                  },
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "ClipTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => Navigator.pushNamed(context, "ClipTest"),
                ),
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
                  child: Text(
                    "Bottom",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () => Navigator.pushNamed(context, "BottomTest"),
                ),
                FlatButton(
                  child: Text(
                    "TextTest",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () => {Navigator.pushNamed(context, "TextTest")},
                ),
                FlatButton(
                  onPressed: () => {Navigator.pushNamed(context, "Echo")},
                  child: new Text(
                    "StatelessWidget",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                ),
                FlatButton(
                    child: Text(
                      "Status",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => Navigator.pushNamed(context, "TapboxA"),
                    color: Colors.blue),
                FlatButton(
                  child: Text(
                    "ParentWidget",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
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
