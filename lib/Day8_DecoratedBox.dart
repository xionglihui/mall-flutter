
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  DecoratedBoxTest extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBoxTest"),
      ),
      body: Column(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red,Colors.orange[700]]),
              borderRadius: BorderRadius.circular(3),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2,2),
                  blurRadius: 4
                )
              ]
            ),
            child: Padding(
              padding:EdgeInsets.symmetric(horizontal: 80,vertical: 18),
              child: Text("Login",style: TextStyle(color:Colors.white),),
            ),
          )
        ],
      ),
    );
  }


}