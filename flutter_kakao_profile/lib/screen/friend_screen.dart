import 'package:flutter/material.dart';
import 'package:flutter_kakao_profile/components/prorfile_card.dart';

import '../model/user.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.yellow[300],
          title: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                child: Image.asset("assets/kakaologo.png"),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "친구",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ],
          )),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          ProfileCard(user: me),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text("친구"),
                SizedBox(
                  width: 6,
                ),
                Text("${friends.length}")
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: friends.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: ProfileCard(user: friends[index]),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
          ),
        ],
      ),
    );
  }
}
