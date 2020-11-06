import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:mall_flutter/view/home/HomeMain.dart';
import 'package:mall_flutter/view/home/HomeMe.dart';
import 'package:mall_flutter/view/home/HomeShopCard.dart';
import 'package:mall_flutter/view/home/HomeWallet.dart';
import 'package:mall_flutter/view/test/Day10_CustomScrollView.dart';
import 'package:mall_flutter/view/test/Day10_GridView.dart';
import 'package:mall_flutter/view/test/Day10_ListView.dart';
import 'package:mall_flutter/view/test/Day10_ScrollController.dart';
import 'package:mall_flutter/view/test/Day10_SingleChildScrollView.dart';
import 'package:mall_flutter/view/test/Day11_InheritedWidget.dart';
import 'package:mall_flutter/view/test/Day11_Provider.dart';
import 'package:mall_flutter/view/test/Day11_WillPopScope.dart';
import 'package:mall_flutter/view/test/Day12_Theme.dart';
import 'package:mall_flutter/view/test/Day2_Route.dart';
import 'package:mall_flutter/view/test/Day3_Widget_Intro.dart';
import 'package:mall_flutter/view/test/Day4_Status.dart';
import 'package:mall_flutter/view/test/Day4_Text.dart';
import 'package:mall_flutter/view/test/Day5_Buttom.dart';
import 'package:mall_flutter/view/test/Day5_Checked.dart';
import 'package:mall_flutter/view/test/Day5_Image.dart';
import 'package:mall_flutter/view/test/Day6_Progress.dart';
import 'package:mall_flutter/view/test/Day6_TextFiled.dart';
import 'package:mall_flutter/view/test/Day6_TextFormField.dart';
import 'package:mall_flutter/view/test/Day7_Flex.dart';
import 'package:mall_flutter/view/test/Day7_Row_Column.dart';
import 'package:mall_flutter/view/test/Day8_Align.dart';
import 'package:mall_flutter/view/test/Day8_Box.dart';
import 'package:mall_flutter/view/test/Day8_DecoratedBox.dart';
import 'package:mall_flutter/view/test/Day8_Padding.dart';
import 'package:mall_flutter/view/test/Day8_StackOrPositioned.dart';
import 'package:mall_flutter/view/test/Day8_Wrap.dart';
import 'package:mall_flutter/view/test/Day9_Clip.dart';
import 'package:mall_flutter/view/test/Day9_Container.dart';
import 'package:mall_flutter/view/test/Day9_Scaffold_TabBar.dart';
import 'package:mall_flutter/view/test/Day9_Transform.dart';
import 'package:mall_flutter/view/utils/MyColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          //onGenerateRoute 全局的路由跳转前置处理逻辑
          String routeName = settings.name;
          if (routeName == "MyTests") {
            return MyTests(title: "MyTests");
          }
        });
      },
      routes: {
        "/": (context) => Main(), //首页注册路由
        // "MyTests":(context) =>MyTests(),
        "Echo": (context) => Echo(
              text: "你还好吗？",
              backgroundColor: Colors.red,
            ),
        "ThemeTest": (context) => ThemeTest(),
        "ProviderTest": (context) => ProviderTest(),
        "InheritedWidgetTest": (context) => InheritedWidgetTest(),
        "WillPopScopeTest": (context) => WillPopScopeTest(),
        "ScrollControllerTest": (context) => ScrollControllerTest(),
        "CustomScrollViewTest": (context) => CustomScrollViewTest(),
        "GridViewTest": (context) => GridViewTest(),
        "ListViewTest": (context) => ListViewTest(),
        "SingleChildScrollViewTest": (context) => SingleChildScrollViewTest(),
        "ClipTest": (context) => ClipTest(),
        "ScaffoldTabBarTest": (context) => ScaffoldTabBarTest(),
        "ContainerTest": (context) => ContainerTest(),
        "TransformTest": (context) => TransformTest(),
        "DecoratedBoxTest": (context) => DecoratedBoxTest(),
        "BoxTest": (context) => BoxTest(),
        "PaddingTest": (context) => PaddingTest(),
        "AlignTest": (context) => AlignTest(),
        "StackOrPositionedTest": (context) => StackOrPositionedTest(),
        "WarpTest": (context) => WarpTest(),
        "CheckTest": (context) => CheckTest(),
        "FlexTest": (context) => FlexTest(),
        "TapboxA": (context) => TapboxA(),
        "ProgressTest": (context) => ProgressTest(),
        "ParentWidget": (context) => ParentWidget(),
        "TextTest": (context) => TextTest(),
        "BottomTest": (context) => BottomTest(),
        "TextFiledTest": (context) => TextFiledTest(),
        "TextFormFieldTest": (context) => TextFormFieldTest(),
        "ImageTest": (context) => ImageTest(),
        "RowOrColumnTest": (context) => RowOrColumnTest(),
        "MyParamsRoute": (context) => MyParamsRoute(
            text: ModalRoute.of(context).settings.arguments), //注册路由传参
      },
      // view.home: new HomePage(), //首页
    );
  }
}

class Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainState();
}

class MainState extends State {
  int chooseIndex = 0;
  List<Widget> pages = new List();

  @override
  void initState() {
    super.initState();
    pages.add(HomeMain());
    pages.add(HomeShopCard());
    pages.add(HomeWallet());
    pages.add(HomeMe());
  }

  void setOnTap(int index) {
    setState(() {
      chooseIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: setOnTap,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            title: Text(
              "首页",
              style: TextStyle(
                  color: chooseIndex == 0 ? BaseThemeColors : Colors.black),
            ),
            icon: chooseIndex == 0
                ? Image.asset(
                    "assets/images/rbt_main_main_checked.png",
                    width: 22,
                    height: 22,
                  )
                : Image.asset(
                    "assets/images/rbt_main_main_unchecked.png",
                    width: 22,
                    height: 22,
                  ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "购物车",
              style: TextStyle(
                  color: chooseIndex == 1 ? BaseThemeColors : Colors.black),
            ),
            icon: chooseIndex == 1
                ? Image.asset(
                    "assets/images/rbt_main_gouwuche_checked.png",
                    width: 22,
                    height: 22,
                  )
                : Image.asset(
                    "assets/images/rbt_main_gouwuche_unchecked.png",
                    width: 22,
                    height: 22,
                  ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "钱包",
              style: TextStyle(
                  color: chooseIndex == 2 ? BaseThemeColors : Colors.black),
            ),
            icon: chooseIndex == 2
                ? Image.asset(
                    "assets/images/rbt_main_task_checked.png",
                    width: 22,
                    height: 22,
                  )
                : Image.asset(
                    "assets/images/rbt_main_task_unchecked.png",
                    width: 22,
                    height: 22,
                  ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "我的",
              style: TextStyle(
                  color: chooseIndex == 3 ? BaseThemeColors : Colors.black),
            ),
            icon: chooseIndex == 3
                ? Image.asset(
                    "assets/images/rbt_main_me_checked.png",
                    width: 22,
                    height: 22,
                  )
                : Image.asset(
                    "assets/images/rbt_main_me_unchecked.png",
                    width: 22,
                    height: 22,
                  ),
          ),
        ],
        currentIndex: chooseIndex,
      ),
      body: pages[chooseIndex],
    );
  }
}
