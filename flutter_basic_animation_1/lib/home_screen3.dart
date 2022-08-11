import 'package:flutter/material.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  double _width = 50;
  Icon _icon1 = const Icon(Icons.abc);
  Icon _icon2 = const Icon(Icons.abc);
  Icon _icon3 = const Icon(Icons.abc);
  Icon _icon4 = const Icon(Icons.abc);
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animatedContainer'),
      ),
      body: Container(
        child: AnimatedContainer(
          child: Stack(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    flag = !flag;
                    _width = flag ? 150 : 50;
                    _icon1 = flag ? Icon(null) : Icon(Icons.abc);
                    _icon2 = flag ? Icon(Icons.abc) : Icon(null);
                    _icon3 = flag ? Icon(Icons.abc) : Icon(null);
                    _icon4 = flag ? Icon(Icons.abc) : Icon(null);
                  });
                },
                child: Row(\

                
                  children: [
                    Container(
                      child: _icon1,
                      color: Colors.amber,
                      width: _width,
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
          duration: Duration(seconds: 1),
        ),
      ),
    );
  }
}
