import 'package:carrot_market_ui_1/models/chatt_message.dart';
import 'package:carrot_market_ui_1/screens/components/image_container.dart';
import 'package:carrot_market_ui_1/screens/home/theme.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({Key? key, required this.chatMassage}) : super(key: key);

  final ChatMassage chatMassage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      height: 100,
      child: Row(
        children: [
          ImageContainer(
              borderRadius: 25,
              imageUrl: chatMassage.profileImage,
              width: 50,
              height: 50),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: chatMassage.sender,
                          style: textTheme().bodyText1),
                      TextSpan(text: chatMassage.location),
                      TextSpan(text: '..${chatMassage.sendDate}'),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  chatMassage.message,
                  style: textTheme().bodyText1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
              ],
            ),
          ),
          Visibility(
              visible: chatMassage.imageUri != null,
              child: ImageContainer(
                  borderRadius: 8,
                  imageUrl: chatMassage.imageUri ?? "",
                  width: 50,
                  height: 50))
        ],
      ),
    );
  }
}
