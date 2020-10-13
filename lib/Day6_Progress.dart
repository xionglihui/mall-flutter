import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProgressTestStataus();
}

class ProgressTestStataus extends State with SingleTickerProviderStateMixin {
  AnimationController animatedContainer;

  @override
  void initState() {
    super.initState();
    animatedContainer =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animatedContainer.forward();
    animatedContainer.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    animatedContainer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ProgressTest"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(12, 22, 12, 0),
            child: Column(
              children: [
                LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.red[200],
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                    value: 0.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.red[200],
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                    value: 0.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: SizedBox(
                    height: 8,
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey[200],
                      valueColor: AlwaysStoppedAnimation(Colors.blue),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey[200],
                      valueColor: AlwaysStoppedAnimation(Colors.blue),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: SizedBox(
                    height: 100,
                    width: 50,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey[200],
                      valueColor: AlwaysStoppedAnimation(Colors.blue),
                      value: 0.7,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    valueColor:
                        ColorTween(begin: Colors.green, end: Colors.blue)
                            .animate(animatedContainer),
                    value: animatedContainer.value,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
