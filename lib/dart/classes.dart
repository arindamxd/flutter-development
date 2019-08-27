// Classes in Dart
// Created by Arindam Karmakar on 27/8/19.

main() {
  Dog d = new Dog('Duffy', 2);
  print('${d.name} [${d.age} ${d.age <= 1 ? "year" : "years"} old Dog]');

  Cat c = new Cat("Sephi", 3);
  print('${c.name} [${c.age} ${c.age <= 1 ? "year" : "years"} old Cat]');

  Cat cn = new Cat.newBorn();
  print('${cn.name} [new born]');
}

/* Simple class */
class Dog {
  String name;
  int age;

  Dog(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

/* Syntactic way to define the plain old constructor */
class Cat {
  String name;
  int age;

  // Syntactic
  Cat(this.name, this.age);

  // Named Constructors
  Cat.newBorn() {
    name = 'Cat';
    age = 0;
  }
}
