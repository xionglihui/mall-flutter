import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FutureBuilderOrStreamBuilderTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StreamBuilderTestState();
}

class StreamBuilderTestState extends  State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuilderTestState"),
      ),
      body: Center(
        child: StreamBuilder(
          builder: (BuildContext content,AsyncSnapshot<int> snapshot){
            if(snapshot.hasError){
              return Text("Error:${snapshot.hasError}");
            }else{
              switch(snapshot.connectionState){
                case ConnectionState.none:
                  return Text("没有 stream");
                case ConnectionState.waiting:
                  return Text("等待数据");
                case ConnectionState.active:
                  return Text("activit: ${snapshot.data}");
                case ConnectionState.done:
                  return Text("Steam已关闭");
              }
            }
          },
        ),
      ),
    );
  }

}

class FutureBuilderTestState extends State {
  Future<String> getNewWork() async {
    Future.delayed(Duration(seconds: 7), () => "网络请求数据");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilderTest"),
      ),
      body:Center(
        child: FutureBuilder(
          future: getNewWork(),
          builder: (BuildContext context,AsyncSnapshot asyncSnapshot){
            if(asyncSnapshot.connectionState==ConnectionState.done){
              if(asyncSnapshot.hasError){
                return Text("请求出错");
              }else{
                return Text("请求成功");
              }
            }else{
              return CircularProgressIndicator();
            }
          }
        ),
      ),
    );
  }


}
