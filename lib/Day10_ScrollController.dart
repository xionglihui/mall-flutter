
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollControllerTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScrollControllerTestStatus();
}

class ScrollControllerTestStatus extends State {
  ScrollController _controller = ScrollController();

  bool showTopBtn = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print(_controller.offset); //打印滚动的位置
      if (_controller.offset < 1000 && showTopBtn) {
        setState(() {
          showTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showTopBtn == false) {
        setState(() {
          showTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollControllerTest"),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemExtent: 50, //列表项高度固定
          itemCount: 100,
          controller: _controller,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("$index"),
            );
          },
        ),
      ),
      floatingActionButton: !showTopBtn
          ? null
          : FloatingActionButton(
              child: Icon(Icons.arrow_forward),
              onPressed: () {
                _controller.animateTo(.0,
                    duration: Duration(microseconds: 200), curve: Curves.ease);
              },
            ),
    );
  }
}
