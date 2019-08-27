// Enum
// Created by Arindam Karmakar on 27/8/19.

main() {
  Dog d = Dog('Duffy', 12, CurrentState.sleeping);
  print('sleeping: ${d.state == CurrentState.sleeping}'); // > true
}

enum CurrentState {
  sleeping,
  barking,
  eating,
  walking
}

class Dog {
  String name;
  int age;
  CurrentState state;

  Dog(this.name, this.age, this.state);

  // Static Method
  static bark() {
    print('Bow Wow');
  }
}
