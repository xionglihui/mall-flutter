import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlexTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlexTest"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 20,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 20,
                  color: Colors.blue,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
          )
        ],
      ),
    );
  }
}
