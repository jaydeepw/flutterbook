import 'package:flutter/material.dart';
import 'package:flutterbook/list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: HomeList())
      ],
    );
  }
}