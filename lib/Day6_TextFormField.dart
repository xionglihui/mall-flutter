import 'package:flutter/material.dart';

class TextFormFieldTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TextFormFieldStatus();
}

class TextFormFieldStatus extends State {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController pwdTextEditingController = TextEditingController();

  GlobalKey globalKey = GlobalKey<FormState>();

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormFieldStatus"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Form(
          key: globalKey,
          autovalidate: true,
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                controller: nameTextEditingController,
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "请输入用户名",
                    icon: Icon(Icons.person)),
                validator: (v) {
                  return v.trim().length < 1 ? "用户名不能为空" : null;
                },
              ),
              TextFormField(
                controller: pwdTextEditingController,
                decoration: InputDecoration(
                    labelText: "密码", hintText: "请输入密码", icon: Icon(Icons.lock)),
                validator: (v) {
                  return v.trim().length < 1 ? "密码不能为空" : null;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Row(
                  children: [
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15),
                        child: Text("登录"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () => {
                          if ((globalKey.currentState as FormState).validate())
                            {showDailog("登录成功")}
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
