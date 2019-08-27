// Built In Data Types - Numbers, Strings, Booleans, Lists, Maps
// Created by Arindam Karmakar on 26/8/19.

main() {

  /* Numbers */
  int x = 100;
  double y = 1.1;
  int z = int.parse('10');
  double d = double.parse('44.4');


  /* Strings */
  String s = 'This is a string';
  String backslash = 'I can\'t speak';

  // String interpolation
  String interpolated = 'Value of x is $x'; // > Value of x is 100
  String interpolated2 = 'Value of s is ${s.toLowerCase()}'; // > Value of s is this is a string


  /* Booleans */
  bool isDoorOpen = false;


  /* List */
  var list = [1,2,3,4]; // Use `const [1,2,3,4];` for immutable list

  print(list); // > [1, 2, 3, 4]
  // Length
  print(list.length); // > 4
  // Selecting single value
  print(list[1]); // > 2
  // Adding a value
  list.add(10);
  // Removing a single instance of value
  list.remove(3);
  // Remove at a particular position
  list.removeAt(0);


  /* Maps */
  var map = {
    'key1': 'value1',
    'key2': 'value2',
    'key3': 'value3'
  };

  //Fetching the values
  print(map['key1']); // > value1
  print(map['test']); // > null

  //Add a new value
  map['key4'] = 'value4';

  //Length
  print(map.length); // > 4

  //Check if a key is present
  map.containsKey('value1');

  //Get entries and values
  var entries = map.entries;
  var values = map.values;

  print(entries); // > (MapEntry(key1: value1), MapEntry(key2: value2), MapEntry(key3: value3), MapEntry(key4: value4))
  print(values); // > (value1, value2, value3, value4)
}
