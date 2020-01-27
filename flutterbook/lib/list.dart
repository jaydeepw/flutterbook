import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var profileImages = new List.of([
      "https://media.gettyimages.com/photos/closeup-portrait-of-siberian-husky-relaxing-on-grassy-field-picture-id595607339?s=2048x2048",
      "https://www.huskypuppiesinfo.com/wp-content/uploads/2018/03/Husky-Potty-Training.jpg",
      "https://previews.123rf.com/images/sergeytikhomirov/sergeytikhomirov1907/sergeytikhomirov190700066/127619399-sable-siberian-husky-puppy-is-sitting-on-a-green-meadow-in-the-park-pet-animals-.jpg",
      "https://cdn11.bigcommerce.com/s-oe2q4reh/images/stencil/2048x2048/products/738/1295/Siberian_Husky_Puppy__60707.1568507093.jpg?c=2",
      "https://cdn1-www.dogtime.com/assets/uploads/gallery/siberian-husky-puppies/husky-1.jpg"
    ]);

    var coverImages = new List.of([
      "https://media.gettyimages.com/photos/closeup-portrait-of-siberian-husky-relaxing-on-grassy-field-picture-id595607339?s=2048x2048",
      "https://cdn1-www.dogtime.com/assets/uploads/gallery/siberian-husky-puppies/husky-1.jpg",
      "https://previews.123rf.com/images/sergeytikhomirov/sergeytikhomirov1907/sergeytikhomirov190700066/127619399-sable-siberian-husky-puppy-is-sitting-on-a-green-meadow-in-the-park-pet-animals-.jpg",
      "https://cdn11.bigcommerce.com/s-oe2q4reh/images/stencil/2048x2048/products/738/1295/Siberian_Husky_Puppy__60707.1568507093.jpg?c=2",
      "https://www.huskypuppiesinfo.com/wp-content/uploads/2018/03/Husky-Potty-Training.jpg"
    ]);

    var listOfDescription = new List.of([
      "To make animations in Flutter, there are many different options available. How do you choose the right animation widget? This article, part of our animation series, delves into the best use cases for TweenAnimationBuilder versus when a different widget is best for the job. The previous article in this series explains just how powerful all the built-in implicit animation widgets are and how much you can accomplish with them.",
      "Why use TweenAnimationBuilder? Suppose you want to create a basic animation: an animation that doesn’t repeat forever and is just one widget or widget tree. Flutter has a convention of naming its implicitly animated widgets AnimatedFoo, where Foo is the name of the property that animates. Don’t believe me? Here’s a sample of built-in, implicitly animated widgets: AnimatedContainer, AnimatedCrossFade, AnimatedDefaultTextStyle, AnimatedModalBarrier, AnimatedOpacity, AnimatedPadding",
      "However, if you need to create a basic animation and none of those built-in implicit animations are what you’re looking for, you can still create that animation with TweenAnimationBuilder!",
      "To use TweenAnimationBuilder, I set the length of time that I want my animation to take with the duration parameter, and the range of values that I want it to animate between with the…Tween parameter. As the name suggests, a Tween object enables you to specify a range of values that you want to animate between",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
    ]);

    var title = new List.of([
      "This is a short title",
      "This is a long title",
      "Elon Must invents stuff",
      "Future is great and living standards are going to grow globally",
      "I dont know what to put here, so just adding this line"
    ]);

    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  child: new Row(children: <Widget>[ClipOval(
                    child: Image.network(
                      coverImages[index],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 12.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(title[index], style: new TextStyle(
                              color: Colors.black87, fontSize: 20.0),),
                          new Text(title[index], style: new TextStyle(
                              color: Colors.grey, fontSize: 14.0),),
                        ],
                      ),
                    ),
                  ],),
                ),
          ]),
          Flexible(
            fit: FlexFit.loose,
            child: new CachedNetworkImage(
              // placeholder: (context, url) => CircularProgressIndicator(),
              imageUrl: coverImages[index],
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          new Icon(
                            FontAwesomeIcons.thumbsUp,
                            color: Colors.red,
                          ),
                          new SizedBox(width: 2.0),
                          new Container(
                            // color: Colors.yellow,
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 4.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: new Text("Like"),
                            ),
                          )
                        ]),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          new Icon(
                            FontAwesomeIcons.commentAlt,
                            color: Colors.red,
                          ),
                          new SizedBox(width: 2.0),
                          new Container(
                            // color: Colors.yellow,
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: new Text("Comment"),
                            ),
                          )
                        ]),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(FontAwesomeIcons.paperPlane),
                  ],
                ),
                new Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),
          new Container(
            padding: const EdgeInsets.all(12.0),
            child: new Column(
              children: <Widget>[
                new Text(listOfDescription[index],
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black87))
              ],
            ),
          ),
          /*Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                        ),
                      )
                    ],
                  ),
                ),*/
          /*Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child:
                      Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
                ),*/
          Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
              child: new Divider(
                height: 10.0,
                thickness: 2.0,
              )),
        ],
      ),
    );
  }
}
