import 'package:flutter/material.dart';
import 'package:flutter_kakao/screens/chat_screen.dart';
import 'package:flutter_kakao/screens/friend_screen.dart';
import 'package:flutter_kakao/screens/more_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // index에 대한 관리가 필요하다. (0, 1, 2, 값들을 저장 관리)
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [FriendScreen(), ChatScreen(), MoreScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.green[100],
        onTap: (index) {
          setState(() {
            print(index);
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ellipsis), label: ""),
        ],
      ),
    );
  }
}
