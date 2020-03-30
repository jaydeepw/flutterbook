import 'package:flutter/material.dart';
import 'package:flutterbook/body.dart';
import 'package:flutterbook/list2.dart';
import 'package:flutterbook/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: false,
    elevation: 1.0,
    title: SizedBox(
            child: new Text(Constants.APP_NAME,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45))),
  );

  final topBar2 = AppBar(
      title: Align(
              alignment: Alignment.centerLeft,
              child: Text(Constants.APP_NAME,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF4267B2)))),
      centerTitle: true,
      // this is all you need
    /*leading: BackButton(
      color: Colors.white,
    ),*/
      elevation: 0,
      backgroundColor: Color(0xFFFFFFFF),
      actions: <Widget>[
          Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 26.0,
                      ),
                  )),
          Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                          FontAwesomeIcons.facebookMessenger,
                          color: Colors.black,
                      ),
                  )),
      ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
            appBar: topBar2,
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
