import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

class MyTests extends StatefulWidget {
  final String title;

  MyTests({Key  key, this.title}) : super(key: key);

  @override
  MyTestsStatue createState() =>MyTestsStatue();
}

class MyTestsStatue extends State<MyTests> {
  var result="";
  int num=0;

  @override
  Widget build(BuildContext context) {
    // String  args=ModalRoute.of(context).settings.arguments;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: Column(
          children: [
            Text("$num+$result"),
            RaisedButton(
              onPressed: () async {
                //push跳转新的页面
                // var rs = await Navigator.push(context,
                //     MaterialPageRoute(builder: (context) {
                //   return MyParamsRoute(text: "不服就干"); //路由跳转  传参
                // }));
                var rs=await Navigator.of(context).pushNamed("MyParamsRoute",arguments: "不服就干");
                setState(() {
                  num++;
                  result = rs;
                });
              },
              child: Text("跳转"),
            )
          ],
        ),
      ),
    );
  }
}

class MyParamsRoute extends StatelessWidget {
  final String text;

  MyParamsRoute({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MyParamsRoute"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            new Text(text),
            new RaisedButton(
              //pop 将栈顶
              onPressed: () => Navigator.pop(context, "想干我 你来啊"),
              child: new Text("返回"),
            )
          ],
        ),
      ),
    );
  }
}
