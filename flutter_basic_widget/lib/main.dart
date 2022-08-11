import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/components/home_page.dart';

void main() {
  runApp(const MyApp());
}

// 기본 위젯
// Text 위젯
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // stateless 위젯에서는 final을 붙여줘야함
  final String _name = "홍길동";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}

class Basic_Gesture extends StatelessWidget {
  const Basic_Gesture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("눌러졌네요 !!!");
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.amber[300],
      ),
    );
  }
}

class Basic_Container extends StatelessWidget {
  const Basic_Container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // decoration 속성을 사용할 때는 color 속성을 동시에 사용하면 오류 !!!
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 48.0,
        height: 48.0,
        decoration: BoxDecoration(
          color: Colors.amber[300],
          border: Border.all(color: Colors.red),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
          )
        ),
      ),
    );
  }
}

class Basic_Stack extends StatelessWidget {
  const Basic_Stack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
      ],
    );
  }
}

class basic_Row extends StatelessWidget {
  const basic_Row({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
  children: <Widget>[
    Expanded(child: const FlutterLogo()),
    Expanded(child: const Text("Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.")),
    Expanded(child: const Icon(Icons.sentiment_very_satisfied)),
  ],
);
  }
}

