import 'dart:io';

import 'package:dart_demo_2/dart_demo_2.dart' as dart_demo_2;

/**
 *  변수 : 타입 추론, 명시적 타입
 */

void main() {
  print('123');

  var name = "Voyager I";
  var year = 1977;
  var antennaDimater = 3.7;
  var flybyObjects = ['Jupiter', 'Sturn', 'Uranus'];
  var image = <String, dynamic>{
    "tags" : ['saturn', 'abc'],
    "url" : '//path/to/saurn.jpg'
  };

  print(image['tags'].runtimeType);
  List<String> tagsList = image['tags'] as List<String>;
  print('===============================');
  print(tagsList);
  print(tagsList[0]);
  print(tagsList[1]);

try {
  print(tagsList[2]);
} catch (e){ 
  print('예외발생!' + e.toString());
}

// try {
//   print(tagsList[2]);
// } on Exception { 
//   print('예외발생!2222222222222222');
// }

// 맵 타입은 {}를 사용한다.
// MAP = KEY, VALUE 방식을 사용한다.
// List 타입은 []를 사용한다.

// Late Values
// Dart 2.12 이후에 추가된 키워드입니다.

description = 'Feijoada!';
print(description);
}
// 선언 후 초기화 된 null이 아닌 변수를 선언합니다. 변수를 느리게 초기화 합니다.
late String description;