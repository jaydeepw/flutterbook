import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbook/utils/constants.dart';

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
        width: 60,
        height: 60,
        child: ClipOval(
                child: CachedNetworkImage(
          placeholder: (context, url) => CircularProgressIndicator(),
                    imageUrl: urls[Random().nextInt(urls.length)],
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        )));
  }

  Widget buildBody(BuildContext context, int index) {
    return getContentCard(index);
  }

  Widget getCardHeader(index) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: new Row(
          children: <Widget>[
            getUserAvatar(),
            Padding(padding: const EdgeInsets.all(8.0)),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Text(
                listItems[index],
                style: getTitleTextStyle(),
              ),
              Padding(padding: const EdgeInsets.all(4.0)),
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
                    /*CachedNetworkImage(
                    imageUrl: urls[Random().nextInt(urls.length)],
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                  )*/
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
      color: Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: InkWell(
        splashColor: Colors.red.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Column(children: <Widget>[
          getCardHeader(index),
            Container(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Text(
                        'A card that can be tapped'
                                'this is really long text. Trying to make'
                                'it like big descript of the card \n\n\n\n'
                                'this is really long text. Trying to make\n',
                        style: getCardContentTextStyle()),
            )
        ]),
      ),
    );
  }

  getListTextStyle() {
      return TextStyle(fontSize: 16.0);
  }

  getCardContentTextStyle() {
      return TextStyle(color: Color(0xFF050505), fontSize: 22.0, fontWeight: FontWeight.w400);
  }

  getTitleTextStyle() {
      return TextStyle(color: Color(0xFF050505), fontSize: 22.0, fontWeight: FontWeight.w700);
  }

  getListSubTitleTextColor() {
    return Color.fromRGBO(219, 219, 219, 1);
  }

  Widget newsFeed() {
    return new ListView.builder(
        itemCount: listItems.length,
            itemBuilder: (BuildContext context, int index) =>
            /*Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ,
                )*/
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
                style: new TextStyle(color: Colors.grey.shade500, fontSize: 16.0),
              ),
            )
          ],
        )));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        backgroundColor: Constants.DEFAULT_BG_COLOR,
            body: isLoading ? loadingScreen() : newsFeed());
  }
}
