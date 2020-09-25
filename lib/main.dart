import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:mall_flutter/Day1_Future.dart';
import 'package:mall_flutter/Day2_Route.dart';
import 'package:mall_flutter/Day3_Widget_Intro.dart';

void main() {
  runApp(MyApp());
  futureTest();
  task();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: "/",
      onGenerateRoute:(RouteSettings settings){
        return MaterialPageRoute(builder: (context){//onGenerateRoute 全局的路由跳转前置处理逻辑
          String routeName = settings.name;
          if(routeName=="MyTests"){
            return MyTests(title: "MyTests");
          }
        }
        );
      },
      routes: {
        "/":(context)=>HomePage(),//首页注册路由
        // "MyTests":(context) =>MyTests(),
        "Echo":(context)=>Echo(text: "你还好吗？",backgroundColor: Colors.red,),
        "MyParamsRoute":(context)=>MyParamsRoute(text: ModalRoute.of(context).settings.arguments),//注册路由传参
      },
      // home: new HomePage(), //首页
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   final num=  WordPair.random();
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo"),
      ),
      body: new Center(
        child: new Column(
          children:<Widget> [
            new Text("你好吗"),
            new Text(num.toString()),
            FlatButton(
              onPressed: ()=>{
                Navigator.pushNamed(context, "Echo")
              },
              child: new Text("StatelessWidget"),
            ),
            Image.asset("assets/images/rbt_main_main_checked.png"),
            //图片加载 在pubspec.yaml flutter节点配置 assets节点 如果加载报错 建议flutter clean 再运行

            new FlatButton(
                onPressed: () {
                  //非命名路由跳转
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return MyTests(title: "ssss",);
                  // }));
                  // Navigator.pushNamed(context, "MyTests");
                  Navigator.of(context).pushNamed("MyTests",arguments: "ssss");
                },
                child: new Text("click me"))
          ],
        ),
      ),
    );
  }
}
