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
      body: TabBarView(
          controller: tabController,
          children: tabs
              .map((e) => Container(
                    alignment: Alignment.center,
                    child: Text(
                      e,
                      textScaleFactor: 5,
                    ),
                  ))
              .toList()),
    );
  }
}

class MyDrawa extends StatelessWidget {
  const MyDrawa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ClipOval(
                        child: Image(
                          image: NetworkImage(
                              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603257088212&di=9fbae8fa8f811bf66f6f33962d8ea293&imgtype=0&src=http%3A%2F%2Fimage.tianjimedia.com%2FuploadImages%2F2010%2F271%2FH236TA7U2D75_2083557.jpg"),
                          width: 60,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      "小哥的大哥",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.filter_1),
                      title: const Text("我的资料"),
                    ),
                    ListTile(
                      leading: const Icon(Icons.filter_2),
                      title:  const Text("邀请好友"),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
