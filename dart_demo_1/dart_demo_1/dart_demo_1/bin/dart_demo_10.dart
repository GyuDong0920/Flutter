import 'dart:math';

void main(List<String> args) {
 var chobab = ["새우초밥", "광어초밥", "연어초밥"];
 // map 함수는 무언가 변형을 해야 할때 사용하면 굉장히 편리하다.

 var chobabChange = chobab.map((i) => "간장_$i").toList;

 print(chobabChange);
 print("-----------------------");
 print(chobab);


} //end of main















