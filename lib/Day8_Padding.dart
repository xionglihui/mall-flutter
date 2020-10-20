
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaddingTest extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("PaddingTest"),
      ),
      body: Padding(padding: EdgeInsets.all(12)
      ,child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text("EdgeInsets.only"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text("EdgeInsets.symmetric"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 8, 12, 12),
              child: Text("EdgeInsets.fromLTRB"),
            )
          ],
        ),),
    );
  }

}