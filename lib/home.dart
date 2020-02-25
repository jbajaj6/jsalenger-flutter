import 'package:flutter/material.dart';
import 'package:universal_html/prefer_universal/html.dart' as html;
import 'dart:js' as js;
import 'package:flutter/rendering.dart';

Duration buttonAnim = new Duration(seconds: 5);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jón Salenger'),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            ),
            Text("Hey, I'm a student. Here's a few links!", style: TextStyle(fontSize: 26), ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text("GitHub"),
                  animationDuration: buttonAnim,
                  color: Colors.black,
                  elevation: 4.0,
                  onPressed: () {
                    js.context.callMethod("open", ["https://www.github.com/jsalenger"]);
                  },
                ),
                MaterialButton(
                  child: Text("Twitter"),
                  animationDuration: buttonAnim,
                  color: Colors.blue,
                  elevation: 4.0,
                  onPressed: (){
                    js.context.callMethod("open", ["https://twitter.com/_CuriosityCore_"]);
                  },
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 40, 40, 15),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text("Hey! Why's it so empty in here?", style: TextStyle(fontSize: 20),),
            ),
            Divider(),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(5, 0, 30, 0),
              child: Text(
                  "Because I'm learning flutter! I don't know how to do much, but the best way to learn is by doing. I sure can say I have learned!",
                  style: TextStyle(fontSize: 20)
              ),
            ),
            Divider(),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text("That's Great!", style: TextStyle(fontSize: 20),),
            ),
            Divider(),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(5, 0, 30, 0),
              child: Text("Thank you!", style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            ),
            Text("Also, since you've been so good, take this!", style: TextStyle(fontSize: 26), ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text("ForgingMetal#8530"),
                  animationDuration: buttonAnim,
                  color: Colors.blueGrey,
                  elevation: 4.0,
                  onPressed: () {
                    js.context.callMethod("open", ["https://www.discordapp.com"]);
                  },
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}

