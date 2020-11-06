
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ThemeTestState();
}

class ThemeTestState extends State {
  Color themeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Theme(
        data: ThemeData(
            primaryColor: themeColor,
            iconTheme: IconThemeData(color: themeColor)),
        child: Scaffold(
          appBar: AppBar(
            title: Text("主题测试"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.airport_shuttle),
                  Text("颜色跟随主题")
                ],
              ),
              Theme(
                data: themeData.copyWith(
                    iconTheme:
                        themeData.iconTheme.copyWith(color: Colors.black)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite),
                    Icon(Icons.airport_shuttle),
                    Text("颜色固定黑色")
                  ],
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: ()=>{
              setState(()=>{
                themeColor=themeColor==Colors.teal?Colors.blue:Colors.teal,
              }
              ),

            },
            child: Icon(Icons.palette),
          ),
        ));
  }
}

class NavBar extends StatelessWidget {
  final String title;
  final Color color;

  const NavBar({Key key, this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 52,
        minWidth: double.infinity,
      ),
      decoration: BoxDecoration(color: color, boxShadow: [
        BoxShadow(color: Colors.black26, offset: Offset(0, 3), blurRadius: 3)
      ]),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          //根据背景颜色来确认title颜色
          color: color.computeLuminance() < 0.5 ? Colors.white : Colors.black,
        ),
      ),
      alignment: Alignment.center,
    );
  }
}
