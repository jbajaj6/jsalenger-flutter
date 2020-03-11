import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Duration buttonAnim = new Duration(seconds: 5);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemWidth = size.width / 2;

    int numberOfItemsPerRow;

    if(size.width < 575 || size.height - kToolbarHeight < 575) {
      numberOfItemsPerRow = 1;
    } else if (size.width > 1125 || size.height - kToolbarHeight > 1125) {
      numberOfItemsPerRow = 4;
    } else if (size.width < 1125 || size.height - kToolbarHeight < 1125) {
      numberOfItemsPerRow = 2;
    } else {
      numberOfItemsPerRow = 4;
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Jón Salenger',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white, // Colors.blueGrey[800],
          elevation: 0.0,
          bottom: PreferredSize(
              child: Container(
                color: Colors.deepOrangeAccent,
                height: 4.0,
              ),
              preferredSize: Size.fromHeight(4.0)),
        ),
        body: GridView.count(
            crossAxisCount: numberOfItemsPerRow,
            padding: EdgeInsets.all(16.0),
            childAspectRatio: (itemWidth / itemWidth),
            // TODO: Build a grid of cards (102)
            children: <Widget>[
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                shadowColor: Colors.deepOrange,
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                child: Scaffold(
                  bottomNavigationBar: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      OutlineButton(
                        child: Text("Twitter"),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://twitter.com/_CuriosityCore_"]);
                        },
                        // shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                      )
                    ],
                  ),
                  body: Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Twitter',
                          style: TextStyle(fontSize: 26.0),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                            'Here\'s a link to my twitter. If you\'d like to follow me that\'s cool 👍. I make funny tweets'),
                        Text(
                          'sometimes.',
                          style: TextStyle(color: Colors.black26),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                shadowColor: Colors.deepOrange,
                clipBehavior: Clip.antiAlias,
                elevation: 8.0,
                child: Scaffold(
                  bottomNavigationBar: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      OutlineButton(
                        splashColor: Color.fromARGB(50, 0, 0, 0),
                        textColor: Colors.black,
                        highlightedBorderColor: Colors.black,
                        child: Text("GitHub"),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://github.com/jsalenger"]);
                        },
                        // shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                      )
                    ],
                  ),
                  body: Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'GitHub',
                          style: TextStyle(fontSize: 26.0),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                            'I make stuff on github sometimes its cool.'),
                        Text(
                          'sometimes.',
                          style: TextStyle(color: Colors.black26),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                shadowColor: Colors.deepOrange,
                clipBehavior: Clip.antiAlias,
                elevation: 6.0,
                child: Scaffold(
                  bottomNavigationBar: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      OutlineButton(
                        textColor: Colors.blueGrey,
                        highlightedBorderColor: Colors.blueGrey,
                        child: Text("Vik"),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://vik.jbsalenger.com"]);
                        },
                        // shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                      )
                    ],
                  ),
                  body: Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Vik.fyi',
                          style: TextStyle(fontSize: 26.0),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                            'Previously hosted on the doman \'vik.fyi\' it has become kind of a meme. '
                                'It is a basic image sharing platform built off django. '
                                'It was my first foreé ( I think that\'s right ) into web development. '
                                'It\'s usually up'
                        ),
                        Text(
                          'usually.',
                          style: TextStyle(color: Colors.black26),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ])
        );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(width: 3.0),
    borderRadius:
        BorderRadius.all(Radius.circular(5.0) //         <--- border radius here
            ),
  );
}
