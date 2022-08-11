void main(List<String> args) {
  CheeseBurger cb = CheeseBurger("치즈 햄버거");
  print(cb.name);
}
class Burger{

  final String? name;

  Burger(this.name){}

}

// const = 컴파일시점


class CheeseBurger extends Burger {
  CheeseBurger(String name) : super(name);
}
