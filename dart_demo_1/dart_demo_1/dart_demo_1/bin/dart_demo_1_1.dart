import 'package:dart_demo_1/dart_demo_1.dart' as dart_demo_1;

void main(List<String> arguments) {

 Chef c1 = Chef("홍길동")..cook();
// c1.cook(); 한줄로 처리 (계단식 표기법)
// .. 연산자를 사용하면 코드 한 줄로 객체를 변수로 넘겨 주면서
// 객체가 가진 함수를 호출할 수 있는 표기법입니다. 


 print("${c1.name}");


}

class Chef {

String name;
Chef(this.name);
void cook(){
  print("$name 요리를 시작합니다.");
// ${} 는 연산시 .사용시 사용한다.
// $ 로 단순 호출할수 있음
}

}