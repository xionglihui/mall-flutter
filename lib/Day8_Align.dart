

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlignTest  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("AlignTest"),
      ),
      body: Container(
        // height: 120,
        // width: 120,
        color: Colors.blue[50],
        child: Align(
          widthFactor: 2,
          heightFactor: 2,
          // alignment: Alignment(2,0),
          alignment: FractionalOffset(0.2,0.6),
          child: FlutterLogo(
            size: 60,
          ),
        ),
      )
    );
  }

}