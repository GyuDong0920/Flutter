import 'dart:math';

void main(List<String> args) {

 Person p1 = Person(name: "홍길동");
 
 print(p1.name);
 print(p1.age);

 // null 대체 연산자
 p1.age = 10;
 int mAge = p1.age ?? 1;
print(mAge);
}

class Person {
  String? name;
  int? age;

  Person({this.name, this.age});
}