import 'package:flutter/material.dart';

class ArcToPointPage extends StatefulWidget {
  @override
  _ArcToPointPageState createState() => _ArcToPointPageState();
}

class _ArcToPointPageState extends State<ArcToPointPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: ArcToPointClipper(),
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.blue,
                alignment: Alignment.topLeft,
                child: SafeArea(
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        child: Icon(
                          Icons.menu,
                          size: 40,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TmpClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width / 2, size.height);
    return null;
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class ArcToPointClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, 110);
    path.lineTo(size.width * 0.5 - 80 - 30, 120);
    path.arcToPoint(
      Offset(size.width * 0.5 - 70, 150),
      radius: Radius.circular(60),
      clockwise: true,
    );

    path.arcToPoint(
      Offset(size.width * 0.5 - 70 + 140, 150),
      radius: Radius.circular(80),
      clockwise: false,
    );
    
    path.arcToPoint(
      Offset(size.width * 0.5 - 70 + 140 + 40, 120),
      radius: Radius.circular(60),
      clockwise: true,
    );

    path.lineTo(size.width, 110);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
