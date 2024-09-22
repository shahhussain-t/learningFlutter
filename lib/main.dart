import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
  var test = TestClass(x: 4, y: 31);

  print(test.x);
// var car= Car(4);
// var plane= Plane(3);
// car.wheelsNum();
// plane.wheelsNum();
// car.carTpe();
// plane.planeTpe();

var newTest=test.copyWith(x:30);
print(newTest.x);
print(newTest.y);


var newTest2=test.copyWith(y:50);
print(newTest2.y);
}

// void main() {
//   runApp(
//     /// Providers are above [MyApp] instead of inside it, so that tests
//     /// can use [MyApp] while mocking the providers
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => Counter()),
//       ],
//       child: const MyApp(),
//     ),
//   );
// }

// //  absturct class word as a base class and function is bot bodu its act as a blue print for shild and it can't be instantiated we ca overide it and add more to it;
// //  blue print abstuct class is a blue print
// //  class name and method name become same the method i called constructor
// abstract class Vechile {
//     Vechile(this.wheels);
//   int wheels ;
//   void wheelsNum();
// }

// class Car extends Vechile {
//   Car(super.wheels);

// void carTpe(){
//   print("Land runner");
// }
//   @override
//    void wheelsNum(){

//     print("The planes's wheel number is $wheels");
//    }
// }

// class Plane extends Vechile {
//   Plane(super.wheels);

// void planeTpe(){
//   print("plane runner");
// }
//   @override
//    void wheelsNum(){

//     print("The car's wheel number is $wheels");
//    }
// }

// understing copyWith method

class TestClass {
  late int x;
  late int y;

  TestClass({required this.x, required this.y});
  TestClass copyWith({int? x, int? y}) {
    return TestClass(x: x??this.x, y: y??this.y);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: BottomNavBar());
  }
}
