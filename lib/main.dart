import 'package:flutter/material.dart';
import 'package:mall_flutter/Day1_Future.dart';
import 'package:mall_flutter/Day2_Route.dart';

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
        return MaterialPageRoute(builder: (context){//onGenerateRoute 回调权限控制
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
        "MyParamsRoute":(context)=>MyParamsRoute(text: ModalRoute.of(context).settings.arguments),
      },
      // home: new HomePage(), //首页
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo"),
      ),
      body: new Center(
        child: new Column(
          children: [
            new Text("你好吗"),
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
