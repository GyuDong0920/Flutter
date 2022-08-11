import 'package:flutter/material.dart';

import '../components/change_text.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("소수 판별기"),
        ),
        body: ChangeText());
  }
}
