import 'package:custom_clipper_demo/widgets/movie_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BezierPage extends StatefulWidget {
  @override
  _BezierPageState createState() => _BezierPageState();
}

class _BezierPageState extends State<BezierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            MovieHeader(),
          ],
        ),
      ),
    );
  }
}
