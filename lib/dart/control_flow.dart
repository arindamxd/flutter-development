// Control Flow in Dart
// Created by Arindam Karmakar on 26/8/19.

main() {
  ifElse();
  looping();
  switching();
}

/* If – else */
ifElse() {
  var number = 57;
  if (number > 100) {
    print('Large Number');
  } else if (number < 100) {
    print('Small Number');
  } else {
    print('Number is 100');
  }

  // Inline
  int age = 60;
  String status = age < 50 ? "Still young" : "Old Man";
  print(status);
}

/* Looping */
looping() {
  String temp = '';

  // For loop
  for (int i = 0; i < 10; i++) {
    temp += temp.isEmpty ? '$i' : ', $i';
  }
  print('For loop: $temp');

  temp = '';

  // While loop
  int i = 0;
  while(i < 10) {
    temp += temp.isEmpty ? '$i' : ', $i';
    i++;
  }
  print('While loop: $temp');
  temp = '';

  // Do-while loop
  int j = 0;
  do {
    temp += temp.isEmpty ? '$j' : ', $j';
    j++;
  } while (j < 10);
  print('Do-while loop: $temp');
  temp = '';
}

/* Switch */
switching() {
  int age = 50;

  switch(age) {
    case 10:
      print('Too Young.');
      break;
    case 20:
    case 30:
      print('Still Young!');
      break;
    case 40:
      print('Getting old.');
      break;
    case 50:
      print('You are old!');
      break;
  }
}
