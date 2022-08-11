class ChatMassage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUri;

  ChatMassage(
      {required this.sender,
      required this.profileImage,
      required this.location,
      required this.sendDate,
      required this.message,
      this.imageUri});
}

List<ChatMassage> chatMassageList = [
  ChatMassage(
      sender: '당근이',
      profileImage: 'https://i.ytimg.com/vi/r30DLfO1D80/hqdefault.jpg',
      location: '진구 중앙동',
      sendDate: '1일전',
      message: '다양한 물품이 많아요'),
  ChatMassage(
      sender: 'Flutter',
      profileImage: 'https://i.ytimg.com/vi/r30DLfO1D80/hqdefault.jpg',
      location: '중동',
      sendDate: '2일전',
      message: '안녕하세요 ~ 물품 문의합니다.',
      imageUri: 'https://i.ytimg.com/vi/r30DLfO1D80/hqdefault.jpg'),
];
