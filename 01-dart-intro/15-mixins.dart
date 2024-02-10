//https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Flyer {
  void fly() => print('I am flying');
}

mixin Walker {
  void walk() => print('I am walking');
}

mixin Swimmer {
  void swim() => print('I am swimming');
}

// Mixin
class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Walker, Flyer {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flyer {}

class Duck extends Bird with Walker, Flyer, Swimmer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flyer {}

void main() {
  final flipper = Dolphin();
  flipper.swim();
  final batman = Bat();
  batman.walk();
  batman.fly();
}
