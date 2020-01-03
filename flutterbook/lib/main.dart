import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterbook/home.dart';

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new FlutterBook());
}

class FlutterBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "FlutterBook",
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}