import 'package:dart_demo_1/dart_demo_1.dart' as dart_demo_1;

void main(List<String> arguments) {
  Person p1 = Person(name: "홍길동");
  Person p2 = Person(name: "임꺽정", money: 10000);


print("${p1.name} 의 재산은 ${p1.money}");
print("${p2.name} 의 재산은 ${p2.money}");

Person p3 = Person(name: "유관순", money: 20000);

print("${p3.name} 의 재산은 ${p3.money}");


}

class Person{

String name;
int money;

  Person({required this.name, this.money = 0});
}

class Chef {

String name;
Chef(this.name);
void cook(){
  print("요리를 시작합니다.");
}

}