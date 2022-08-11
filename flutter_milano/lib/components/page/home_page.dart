import 'package:flutter/material.dart';
import 'package:flutter_milano/components/home/home_body.dart';
import 'package:flutter_milano/components/home/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [HomeHeader(), HomeBody()],
      ),
    );
  }
}
