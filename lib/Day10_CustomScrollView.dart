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
          )
        ],
      ),
    );
  }
}
