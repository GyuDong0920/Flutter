import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.red,
          child: makeListView2(),
        ),
        Container(
          color: Colors.blue,
          width: 500,
          height: 500,
        )
      ],
    );
  }

  Widget _buildItems() {
    return Column();
  }

  Widget makeListView2() {
    List<Cards> cardList = [
      Cards("안녕", "안녕", Image.asset("assets/logo.png")),
      Cards("안녕", "안녕", Image.asset("assets/logo.png")),
      Cards("안녕", "안녕", Image.asset("assets/logo.png")),
      
      ];

    return ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: (index + 1) * 50.0,
            color: cardList[index],
            child: Text("List item :: $index"),
          );
        });
  }
}

class Cards {
  String name;
  String title;
  Image image;

  Cards(this.name, this.title, this.image) {}
}
