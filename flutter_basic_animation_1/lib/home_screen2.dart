import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.redAccent;
  BorderRadiusGeometry _borderradiusgeometry = BorderRadius.circular(8);
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration:
              BoxDecoration(color: _color, borderRadius: _borderradiusgeometry),
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOutCirc,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (i = 0; i < 5; i++) {
            build(context);
          }
          setState(() {
            final random = Random();
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                random.nextInt(256), 1);
            _borderradiusgeometry =
                BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
        child: Icon(Icons.arrow_right_sharp),
      ),
    );
  }
}
