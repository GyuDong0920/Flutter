import 'package:carrot_market_ui_1/models/product.dart';
import 'package:carrot_market_ui_1/screens/components/app_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/item_list.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "좌동",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          HomePageAppBar(icon: FontAwesomeIcons.search),
          SizedBox(
            width: 10,
          ),
          HomePageAppBar(icon: FontAwesomeIcons.list),
          SizedBox(
            width: 10,
          ),
          HomePageAppBar(icon: FontAwesomeIcons.bell),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: List.generate(
                productList.length,
                (index) => ItemListItem(
                  product: productList[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
