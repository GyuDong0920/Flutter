import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나의 당근'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.gear_solid),
            color: Colors.black,
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 2,
            height: 1,
            color: Colors.grey[250],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildMyInfo(),
            SizedBox(
              height: 15,
            ),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildMyInfo() {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://i.ytimg.com/vi/tZixREYOIZQ/maxresdefault.jpg"),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(1),
                child: Icon(
                  FontAwesomeIcons.camera,
                  color: Colors.black,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "developer",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "좌동 #00912",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }

  Widget _buildButtons() {
    return Column(
      children: [
        TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
              side: BorderSide(color: Colors.black12, width: 1.5)),
          onPressed: () {},
          child: Container(
            width: 350,
            height: 35,
            child: Center(
              child: Text(
                "프로필 보기",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.deepOrange[50],
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.list,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Text(
                  "판매내역",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.deepOrange[50],
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.bagShopping,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Text(
                  "구매내역",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.deepOrange[50],
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Text(
                  "관심목록",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget _buildListOption1() {
    return ListView(
      children: [
        Container(
          child: Row(
            children: [
              TextButton(
                  onPressed: () {},
                  child: Icon(FontAwesomeIcons.handPointDown)),
              SizedBox(
                width: 15,
              ),
              Text("내 동네 설정")
            ],
          ),
        )
      ],
    );
  }
}
