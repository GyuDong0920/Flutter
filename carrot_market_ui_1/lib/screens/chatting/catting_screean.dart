import 'package:carrot_market_ui_1/models/chatt_message.dart';
import 'package:carrot_market_ui_1/models/chatting.dart';
import 'package:carrot_market_ui_1/screens/chatting/components/chat_container.dart';
import 'package:carrot_market_ui_1/screens/home/theme.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

import '../components/appbar_preferrendsize.dart';
import 'components/chatting_list.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '채팅',
          style: textTheme().headline2,
        ),
        bottom: appBarBottomLine(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: ListView(
          children: List.generate(chatMassageList.length,
              (index) => ChatContainer(chatMassage: chatMassageList[index])),
        ),
      ),
    );
  }
}
