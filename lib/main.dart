import 'package:custom_clipper_demo/pages/arc_to_page.dart';
import 'package:custom_clipper_demo/pages/arc_to_point.dart';
import 'package:custom_clipper_demo/pages/basic_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ArcToPointPage(),
    );
  }
}

