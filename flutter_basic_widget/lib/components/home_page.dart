import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

// 변수 선언 : 상태를 저장할 수 있는 변수를 선언
 int _counter = 99999999999999;


// 메서드 선언 (동작을 정의)
void _increment(){
  // 반드시 상태를 변경하는 메서드를 만들경우 setstate라는 녀석을 호출하고 그 안에
  // 동작을 정의해야 한다.
  setState(() {
    _counter++;
  });
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ElevatedButton(onPressed: _increment, child: Text('increment')),
          SizedBox(width: 16),
          Text('count : $_counter'),
        ],
      ),
    );
  }
}