// Defining Variables
// Created by Arindam Karmakar on 26/8/19.

main(List<String> args) {

  // Just like in JavaScript you can use the var keyword to define variables.
  var name = 'Ross';
  var age = 28;
  var salary = 250300.56;
  var isMale = true;

  // Create Person object
  var monica = Person();
  var ross = Person.brother(name, age, salary, isMale);

  print(monica.name + " [" + (monica.isMale ? "Male" : "Female") + "]"); // Monica [Female]
  print(ross.name + " [" + (ross.isMale ? "Male" : "Female") + "]"); // > Ross [Male]
}

class Person {

  // You can also define variables by explicitly providing type of data.
  String name = 'Monica';
  int age = 27;
  double salary = 10000.00;
  bool isMale = false;

  // Default Constructor
  Person();

  // Named Constructor
  Person.brother(this.name, this.age, this.salary, this.isMale);
  Person.sister(this.name, this.age, this.salary, this.isMale);
}
