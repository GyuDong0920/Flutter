import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How Center"),
        centerTitle: true,
      ),
      // 화면 정가운데 배치 공식 기본
      // center 위젯은 가로축으로 가운데 정렬
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.blue[100],
              width: 300,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 20.0, 0, 0),
                child: Text("Hello", style: TextStyle(backgroundColor: Colors.amber),),
              )),
            Text("Hello"),
            Text("Hello"),
          ],
        ),
      ),
    );
  }
}