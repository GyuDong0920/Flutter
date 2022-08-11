import 'package:carrot_market_ui_1/models/chatting.dart';
import 'package:carrot_market_ui_1/screens/home/theme.dart';
import 'package:file/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class ChattingList extends StatelessWidget {
  const ChattingList({Key? key, required this.chattingList}) : super(key: key);

  final List<chatting> chattingList;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: Column(
        children: List.generate(
          chattingList.length,
          (index) => _buildImageRowchatting(
              chattingList[index].image,
              chattingList[index].name,
              chattingList[index].address,
              chattingList[index].whendate,
              chattingList[index].chat,
              chattingList[index].replyImage),
        ),
      ),
    );
  }

  Widget _buildImageRowchatting(String image, String name, String address,
      String whendate, String chat, String? replyImage) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(name, style: TextTheme().headline3),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      address,
                      style: TextTheme().subtitle2,
                    ),
                    Text("•"),
                    Text(
                      whendate,
                      style: TextTheme().subtitle2,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 235,
                  child: Text(
                    chat,
                    style: TextStyle(fontSize: 15),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                  ),
                )
              ],
            ),
            Visibility(
              visible: replyImage != null,
              child: SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    replyImage ?? "",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
