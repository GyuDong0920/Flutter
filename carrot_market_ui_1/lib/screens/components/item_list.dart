import 'package:carrot_market_ui_1/models/product.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemListItem extends StatelessWidget {
  const ItemListItem({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(product.urlToImage),
                  ),
                )),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title, style: TextStyle( fontSize: 16, color: Colors.black),),
                Text(product.address + "," + product.publishedAt),
                Text(product.price, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
              ],
            ),
          ),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(product.author),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(FontAwesomeIcons.heart,size: 15, color: Colors.black,),
                    Icon(FontAwesomeIcons.heart,size: 15, color: Colors.black,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
