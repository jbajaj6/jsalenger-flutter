import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jón Salenger',
      theme: ThemeData(
        // This is the theme
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,

    );
  }
}
