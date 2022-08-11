import 'package:flutter/material.dart';
import 'package:flutter_milano/colors.dart';
import 'package:flutter_milano/size.dart';
import 'package:flutter_milano/style.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: PrimaryColor,
      child: Row(
        children: [
          _buildLogo(),
          Spacer(),
          screenWidth < 550 ? _buildSmallMenu() : _buildMenu()
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Row(
      children: [
        SizedBox(
          width: gap_s,
        ),
        Image.asset(
          "assets/logo.png",
          height: 50,
          width: 75,
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "Milano",
          style: h4(mColor: Colors.white),
        ),
      ],
    );
  }

  Widget _buildMenu() {
    return Row(
      children: [
        Text(
          "SOCAIL",
          style: h5(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "STORE",
          style: h5(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "LOGIN",
          style: h5(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "JOIN",
          style: h5(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_s,
        ),
      ],
    );
  }

  _buildSmallMenu() {
    return Row(
      children: [
        Text(
          "SOCAIL",
          style: body1(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "STORE",
          style: body1(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "LOGIN",
          style: body1(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "JOIN",
          style: body1(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_s,
        ),
      ],
    );
  }
}
