// Inheritance
// Created by Arindam Karmakar on 27/8/19.

main() {
  Dog d = Dog.newBorn();
  print('${d.name} [${d.age}]');

  d.bark();

  Pug ps = Pug.small('Muffy');
  print('${ps.name} [${ps.age}]');

  ps.bark();
}

class Dog {
  // Controlling Accessibility
  String _name; // (Private) by using ( _ ).
  int age;

  // Getter and Setter
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  Dog(this._name, this.age);

  // Named Constructors
  Dog.newBorn() {
    _name = 'Duffy';
    age = 0;
  }

  // Methods
  bark() {
    print('Bow Wow!');
  }
}

// You can inherit other classes in Dart using the extend keyword.
class Pug extends Dog {
  // You can also call other constructor within in the same class by using
  // the keyword this after the colons ( : ).
  Pug(String name, int age): super(name, age);

  // Named Constructors
  Pug.small(String name): this(name, 1);
  Pug.large(String name): this(name, 3);

  @override
  bark() {
    print("Meow!");
  }
}