import 'package:flutter/material.dart';
import 'package:flutterbook/body.dart';

class Home extends StatelessWidget {

  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: false,
    elevation: 1.0,
    title: SizedBox(
      child: new Text("FlutterBook", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45))),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: topBar,
        body: new Body(),
        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ));
  }
}
