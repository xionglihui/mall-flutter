import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScrollViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Demo"),
              background: Image.asset("assets/images/ic_launcher.png",fit: BoxFit.cover,),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing:10,
                childAspectRatio: 4.0,
                crossAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate(
                  (BuildContext buidContext,int index){
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.cyanAccent[100*(index%9)],
                      child: Text("grid item $index"),
                    );
                  },
                childCount: 20
              ),
            )
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
                (BuildContext buidContext,int index){
                  return  Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100*(index%9)],
                    child: Text("list item $index"),
                  );
                },
              childCount: 50
            ),
          )
        ],
      ),
    );
  }
}
