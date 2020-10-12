import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFiledTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TextFiledTestStatus();
}

class TextFiledTestStatus extends State {

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController pwdTextEditingController = TextEditingController();

  FocusNode nameFocusNode = FocusNode();
  FocusNode pwdFocusNode = FocusNode();
  FocusScopeNode focusScopeNode = FocusScopeNode();

  showDailog(String msg) {
    showDialog(
        context: context,
        child: new AlertDialog(
          content: new Text(
            msg,
            style: new TextStyle(fontSize: 12.0, color: Colors.red),
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    nameTextEditingController.dispose();
    pwdTextEditingController.dispose();
  }

  void login() {
    String name = nameTextEditingController.text;
    String pwd = pwdTextEditingController.text;
    if (name == "") {
      showDailog("请输入用户名");
      return;
    }
    if (pwd == "") {
      showDailog("请输入密码");
      return;
    }
    showDailog("登录成功 用户名:" + name + "密码:" + pwd);
  }

  @override
  void initState() {
    super.initState();
    nameTextEditingController.addListener(() {
      //监听文本变化
      print("用户名:" + nameTextEditingController.text);
    });
    pwdTextEditingController.addListener(() {
      print("密码:" + pwdTextEditingController.text);
    });
    nameFocusNode.addListener(() {
      //焦点状态监听
      print(nameFocusNode.hasFocus);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          hintColor: Colors.grey[200],
          inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(color: Colors.grey),
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14))),
      child: Scaffold(
        appBar: AppBar(title: Text("ProgressTest")),
        body: Column(
          children: [
            TextField(
                autofocus: true,
                controller: nameTextEditingController,
                focusNode: nameFocusNode,
                onChanged: (v) => {},
                decoration: InputDecoration(
                    // labelText: "用户名",
                    hintText: "请输入用户名",
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    prefixIcon: Icon(Icons.person))),
            TextField(
                autofocus: true,
                controller: pwdTextEditingController,
                focusNode: pwdFocusNode,
                onChanged: (v) => {},
                decoration: InputDecoration(
                    // labelText: "密码",
                    hintText: "请输入密码",
                    prefixIcon: Icon(Icons.lock)),
                obscureText: true),
            Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 22, 15, 0),
                  child: FlatButton(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text("登录", style: TextStyle(color: Colors.white)),
                    ),
                    color: Colors.blue,
                    onPressed: () => login(),
                  ),
                )),
            FlatButton(
              color: Colors.blue,
              child: Text(
                "移动焦点",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => {
                if (nameFocusNode.hasFocus)
                  {FocusScope.of(context).requestFocus(pwdFocusNode)}
                else
                  {FocusScope.of(context).requestFocus(nameFocusNode)}
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text(
                "隐藏键盘",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () =>
                  {nameFocusNode.unfocus(), pwdFocusNode.unfocus()},
            )
          ],
        ),
      ),
    );
  }
}
