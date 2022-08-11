void main(List<String> args) {
  
  // 동적 바인딩
  start(Dog()); // 메모리에 객체가 올라간 dog의 sound 메서가 호출 되었다.
  start(Cat()); // 메모리에 객체가 올라간 Cat의 Sound 메서드가 호출 되었다.
  start(Fish()); // 메모리에 객체가 올라간 Cat의 Sound 메서드가 호출 되었다.

}

abstract class Animal {
  void sound();
}

class Dog implements Animal {
  @override
  void sound() {
    print("멍멍");
  }

}

class Cat implements Animal {
  @override
  void sound() {
    print("야옹");
  }

}

class Fish implements Animal {
  @override
  void sound() {
    print("뻐금뻐금");
  }

}

void start(Animal a) {
  a.sound();
}