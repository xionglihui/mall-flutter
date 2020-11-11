import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DailogTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Dialog1State1();
}

class Dialog1State1 extends State {
  //弹出对话框
  Future<bool> showDeleteConfirmDialog1() {
    return showDialog(
        context: context,
        builder: (cotenxt) {
          return AlertDialog(
            title: Text("提示"),
            content: Text("您确定要删除当前文件吗？"),
            actions: [
              FlatButton(
                child: Text("取消"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text("确认"),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DailogTestStatue"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("对话框1",style: TextStyle(color:Colors.white),),
          color: Colors.blue,
          onPressed: () async {
            bool detele =  await showDeleteConfirmDialog1();
            if (detele == null) {
              print("取消");
            } else {
              print("删除");
            }
          },
        ),
      ),
    );
  }
}
