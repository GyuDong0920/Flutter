import 'main_test2.dart';

void main(List<String> args) {
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  // java 컬렉션 프레임 워크 사용시
  // map, fliter

  flybyObjects.where((name) => name.contains('turn')).forEach(print);
  // 익명함수를 인수로 전달할 때 유용한 방법이다.

  printWithDelay2('비동기 함수 입니다.');
}

// Enums
enum planetType { terrestial, gas, ice }

// 상속
class Orbiter extends Spacecraft {
 double altitude;

 Orbiter(super.name, DateTime super.launchDate, this.altitude);

}

// 비동기 Async
// 콜백 지옥을 피하고 async 및 await 를 사용할 수 있다.
// 훨씬 코드를 쉽게 만들 수 있다.

const oneSecond = Duration(seconds: 5);

// 네트워크 통신할 때 사용
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

Future<void> printWithDelay2(String message) {  
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });

}
