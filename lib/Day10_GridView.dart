import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewTest"),
      ),
      body: GridViewTest5(),
    );
  }
}

class GridViewTest5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GridViewTest5Status();
}

class GridViewTest5Status extends State {
  List<IconData> icons = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() {
    Future.delayed(Duration(microseconds: 2)).then((value) => {
          setState(() {
            icons.addAll([
              Icons.ac_unit,
              Icons.local_airport,
              Icons.all_inclusive,
              Icons.beach_access,
              Icons.cached,
              Icons.free_breakfast
            ]);
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 2.0),
        itemBuilder: (BuildContext context, index) {
          if (index == icons.length - 1 || icons.length < 200) {
            getData();
          }
          return Icon(icons[index]);
        });
  }
}

class GridViewTest4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 80,
      childAspectRatio: 2.0,
      children: [
        Icon(Icons.ac_unit),
        Icon(Icons.local_airport),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cached),
        Icon(Icons.free_breakfast),
      ],
    );
  }
}

class GridViewTest3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 60,
        childAspectRatio: 2.0,
      ),
      children: [
        Icon(Icons.ac_unit),
        Icon(Icons.local_airport),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cached),
        Icon(Icons.free_breakfast),
      ],
    );
  }
}

class GridViewTest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      children: [
        Icon(Icons.ac_unit),
        Icon(Icons.local_airport),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cached),
        Icon(Icons.free_breakfast),
        Icon(Icons.free_breakfast)
      ],
    );
  }
}

class GridViewTest1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1.0),
      children: [
        Icon(Icons.ac_unit),
        Icon(Icons.local_airport),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cached),
        Icon(Icons.free_breakfast)
      ],
    );
  }
}
