import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxTest extends StatelessWidget {
  Widget readBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BoxTest"),
      ),
      body: Column(
        children: [
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 50),
            child: Container(
              height: 5,
              child: readBox,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: SizedBox(
              width: 80,
              height: 80,
              child: readBox,
            ),
          )
        ],
      ),
    );
  }
}
