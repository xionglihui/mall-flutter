import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldTabBarTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScaffoldTabBarStatus();
}

class ScaffoldTabBarStatus extends State with SingleTickerProviderStateMixin {
  int selectIndex = 0;

  List tabs = ["新闻", "体育", "图片"];

  TabController tabController;

  hand(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScaffoldTabBarTest"),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () => {},
          )
        ],
        bottom: TabBar(
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
          controller: tabController,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.message), title: Text("消息")),
          BottomNavigationBarItem(icon: Icon(Icons.share), title: Text("分享"))
        ],
        currentIndex: selectIndex,
        fixedColor: Colors.blue,
        onTap: hand,
      ),
      drawer: MyDrawa(),
    );
  }
}

class MyDrawa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(top: 12),
          color: Colors.blue,
          child: Text("我的资料"),
        ),
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(top: 12),
          color: Colors.blue,
          child: Text("我的资料"),
        ),
      ],
    );
  }
}
