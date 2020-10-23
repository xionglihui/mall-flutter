import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListViewTest"),
        ),
        body: ListViewTest3());
  }
}

class ListViewTest4 extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(title: Text("商品列表"),)

      ],
    );
  }

}

class ListViewTest3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListViewTest3State();
}

class ListViewTest3State extends State {
  static const loadingTag = "loading";
  var words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() {
    Future.delayed(Duration(seconds: 2)).then((value) => {
          setState(() {
            words.insertAll(
                words.length - 1,
                generateWordPairs()
                    .take(20)
                    .map((e) => e.asPascalCase)
                    .toList());
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          if (words[index] == loadingTag) {
            if (words.length - 1 < 100) {
              getData();
              return Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    )),
              );
            } else {
              return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16),
                child: Text("没有更多数据了"),
              );
            }
          }
          return ListTile(
            title: Text(words[index]),
          );
        },
        separatorBuilder: (context, indext) =>
            Divider(color: Colors.blue, height: 0),
        itemCount: words.length);
  }
}

class ListViewTest2 extends StatelessWidget {
  Widget divider1 = Divider(color: Colors.blue); //分割线

  Widget divider2 = Divider(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.separated(
          itemBuilder: (BuildContext context, indext) {
            return ListTile(
              title: Text("$indext"),
            );
          },
          separatorBuilder: (BuildContext cotenxt, index) {
            return index % 2 == 0 ? divider1 : divider2;
          },
          itemCount: 100),
    );
  }
}

class ListViewTest1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
          itemCount: 120,
          itemExtent: 30, //强制高度
          itemBuilder: (BuildContext cotentxt, int index) {
            return ListTile(
              title: Text("$index"),
            );
          }),
    );
  }
}
