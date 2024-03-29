import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton()
      ],
    );
  }
}

Widget _buildFollowButton () {
  return InkWell(
    onTap: () {
      print("Follow 버튼클릭 됨");
    },
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      width: 150,
      height: 45,
      child: Text('Follow', style: TextStyle(color: Colors.white),),
  
    ),
  );
}

Widget _buildMessageButton () {
  return InkWell(
    onTap: () {
      print("Message 버튼클릭 됨");
    },
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
      color: Colors.white, 
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black)),
      width: 150,
      height: 45,
      child: Text('Message', style: TextStyle(color: Colors.black),),
    ),
  );
}