import 'package:flutter/material.dart';

class CubicToPage extends StatefulWidget {
  CubicToPage({Key key}) : super(key: key);

  @override
  _CubicToPageState createState() => _CubicToPageState();
}

class _CubicToPageState extends State<CubicToPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: CubicToClipper(),
          child: Container(
            width: double.infinity,
            height: 300,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class CubicToClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    final Offset n1 =Offset(size.width*0.25,0);
    final Offset n2 =Offset(size.width*0.7,size.height*1.25);
    path.cubicTo(n1.dx, n1.dy, n2.dx, n2.dy, size.width, size.height*0.75);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width,0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
