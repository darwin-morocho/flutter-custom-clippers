import 'package:custom_clipper_demo/widgets/wave_header.dart';
import 'package:flutter/material.dart';

class WavePage extends StatefulWidget {
  @override
  _WavePageState createState() => _WavePageState();
}

class _WavePageState extends State<WavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            WaveHeader()
          ],
        ),
      ),
    );
  }
}
