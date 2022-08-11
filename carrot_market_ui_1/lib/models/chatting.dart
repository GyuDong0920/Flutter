import 'package:flutter/cupertino.dart';

class chatting {
  final String name;
  final String image;
  final String address;
  final String whendate;
  final String chat;
  final String? replyImage;

  chatting(
      {required this.name,
      required this.image,
      required this.address,
      required this.whendate,
      required this.chat,
      required this.replyImage});
}

List<chatting> chattingList = [
  chatting(
      name: "당근이",
      image: "https://i.ytimg.com/vi/r30DLfO1D80/hqdefault.jpg",
      address: "대부동",
      whendate: "1일전",
      chat: "developer 님, 근처에다양한 물품들이 아주 많이 있습니다.",
      replyImage: null),
  chatting(
      name: "Flutter",
      image: "https://i.ytimg.com/vi/r30DLfO1D80/hqdefault.jpg",
      address: "중동",
      whendate: "2일전",
      chat: "안녕하세요 지금 다 예약 상태인가요?.",
      replyImage: "https://i.ytimg.com/vi/r30DLfO1D80/hqdefault.jpg"),
];
