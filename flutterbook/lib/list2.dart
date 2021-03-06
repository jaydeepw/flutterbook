import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbook/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeList2 extends StatefulWidget {
  static const String routeName = 'toprankings';

  @override
  HomeListState2 createState() => HomeListState2();
}

class HomeListState2 extends State<HomeList2> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool isLoading = false;
  String heading = "My Profile",
      status = "Approved",
      name = "Santosh Kale",
      mobileNumber = "9898909908",
      city = "Pune";

  String panNumber = "ABHS89816J";

  // List<String> litems = ["1", "2"];
  List<String> names = [
    "Christi Shambaugh",
    "Kory Pickett",
    "Henry Rohr",
    "Renaldo Councill",
    "Bernardina Font",
    "Kassandra Tacy",
    "Eleonore Stenger",
    "Cherrie Schilke",
    "Bonnie Cullen",
    "Fredricka Hazen",
    "Herlinda Cleveland",
    "Gerard Tolbert",
    "Holly Odonnell",
    "Wilburn Volk",
    "Amy Storck",
    "Danita Scofield",
    "Dixie Fedele",
    "Williemae Hennessey",
    "Suzie Marquez",
    "Carter Kreps"
  ];
  List<String> listItems = List<String>();
  List<String> urls = [
    "https://images.unsplash.com/photo-1578860549169-219f5e786c1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=976&q=80",
    "https://images.unsplash.com/photo-1560830672-575980201c33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
    "https://images.unsplash.com/photo-1511204295025-66299d0679a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
    "https://images.unsplash.com/photo-1577915689826-f6add3fa3f98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
    "https://images.unsplash.com/photo-1568482215464-ddfb0c404393?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80",
    "https://images.unsplash.com/photo-1513562125232-e01b14add515?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2697&q=80",
    "https://images.unsplash.com/photo-1558099089-ba08c0364321?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
  ];

  getItems() {
    for (int i = 0; i < 50; i++) {
      listItems.add(names[Random().nextInt(names.length)]);
    }
  }

  getRandomImage() {
    return urls[Random().nextInt(urls.length)];
  }

  getRandom(List<String> list, max) {
    return list[Random().nextInt(max)];
  }

  @override
  void initState() {
    super.initState();

    if (Constants.IS_DEVELOPING) {
      getItems();
    }
  }

  _showLoading() {
    setState(() {
      isLoading = true;
    });
  }

  _hideLoading() {
    setState(() {
      isLoading = false;
    });
  }

  getUserAvatar() {
    return new Container(
        width: 50,
        height: 50,
        child: ClipOval(
            child: CachedNetworkImage(
          placeholder: (context, url) => CircularProgressIndicator(),
          imageUrl: urls[Random().nextInt(urls.length)],
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        )));
  }

  Widget buildBody(BuildContext context, int index) {
    return getContentCard(index);
  }

  Widget getCardHeader(index) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: new Row(
          children: <Widget>[
            getUserAvatar(),
            Padding(padding: const EdgeInsets.all(8.0)),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Text(
                listItems[Random().nextInt(listItems.length)],
                style: getTitleTextStyle(),
              ),
              Padding(padding: const EdgeInsets.all(2.0)),
              Row(
                children: <Widget>[
                  Text(
                    "${Random().nextInt(59)} mins",
                    style: getListTextStyle(),
                  ),
                  Text(
                    " • ",
                    style: getListTextStyle(),
                  ),
                  Icon(Icons.people, size: 24)
                ],
              ),
            ]),
            Spacer(),
            Expanded(
              flex: 0,
              child: IconButton(icon: Icon(Icons.more_horiz)),
            ),
          ],
        ));
  }

  Widget getContentCard(index) {
    return Card(
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 12.0),
      color: Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      elevation: 0,
      child: InkWell(
        splashColor: Colors.red.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Column(children: <Widget>[
          getCardHeader(index),
          getCardBody(index),
          Divider(thickness: 0.5),
          getCardFooter()
        ]),
      ),
    );
  }

  TextStyle getFooterCtaFontStyle() {
    return TextStyle(color: Color(0xFF6A6D70), fontSize: 16.0, fontWeight: FontWeight.w400);
  }

  Widget getCardFooter() {
    return Container(
      height: 48,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new Icon(
                    FontAwesomeIcons.thumbsUp,
                    color: Color(0xFF65676B),
                  ),
                  new SizedBox(width: 2.0),
                  new Container(
                    // color: Colors.yellow,
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: new Text("Like", style: getFooterCtaFontStyle()),
                    ),
                  )
                ]),
          ),
          Expanded(
            flex: 3,
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new Icon(
                    FontAwesomeIcons.commentAlt,
                    color: Color(0xFF65676B),
                  ),
                  new SizedBox(width: 2.0),
                  new Container(
                    // color: Colors.yellow,
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: new Text("Comment", style: getFooterCtaFontStyle()),
                    ),
                  )
                ]),
          ),
          Expanded(
            flex: 3,
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new Icon(
                    FontAwesomeIcons.facebookMessenger,
                    color: Color(0xFF65676B),
                  ),
                  new SizedBox(width: 2.0),
                  new Container(
                    // color: Colors.yellow,
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: new Text("Send", style: getFooterCtaFontStyle()),
                    ),
                  )
                ]),
          )
        ],
      ),
    );
  }

  getListTextStyle() {
    return TextStyle(fontSize: 12.0);
  }

  getCardContentTextStyle() {
    return TextStyle(color: Color(0xFF050505), fontSize: 18.0, fontWeight: FontWeight.w400);
  }

  getTitleTextStyle() {
    return TextStyle(color: Color(0xFF050505), fontSize: 18.0, fontWeight: FontWeight.w700);
  }

  getListSubTitleTextColor() {
    return Color.fromRGBO(219, 219, 219, 1);
  }

  Widget newsFeed() {
    return new ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (BuildContext context, int index) =>
            buildBody(context, index));
  }

  Widget loadingScreen() {
    return new Container(
        margin: const EdgeInsets.only(top: 100.0),
        child: new Center(
            child: new Column(
          children: <Widget>[
            new CircularProgressIndicator(strokeWidth: 4.0),
            new Container(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                'Please Wait',
                style: new TextStyle(color: Colors.grey.shade500, fontSize: 12.0),
              ),
            )
          ],
        )));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xffBDC1C9),
        body: isLoading ? loadingScreen() : newsFeed());
  }

  Widget getCardBody(index) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      child: Text(
          'A card that can be tapped'
          'this is really long text. Trying to make'
          'it like big descript of the card \n\n\n'
          'this is really long text. Trying to make',
          style: getCardContentTextStyle()),
    );
  }
}
