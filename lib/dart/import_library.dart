import 'dart:async';

// Asynchronous and Importing Library in Dart #1
// Created by Arindam Karmakar on 27/8/19.

main() {
  getAJoke().then((value) {
    print(value);
  }).catchError((error) {
    print('Error: $error');
  });

  getAJokeException().then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  });

  getAJokeDelayed().then((value) {
    print(value);
  }).catchError((error) {
    print('Error: $error');
  });

  print('Another print statement.');


}

/// Future/Future<T>
///
/// The async library contains something called Future. Future is
/// something that is based on the observer pattern. If you familiar with
/// Rx or Promises in Javascript you are good to go.

Future<String> getAJoke() {
  return new Future<String>(() {
    // Do a long running task. E.g. Network Call.
    // Return the result

    return "This is a joke.";
  });
}

Future<String> getAJokeException() {
  return new Future<String>(() {
    // Do a long running task. E.g. Network Call.
    // Return the result

    throw new Exception('No joke for you!');
  });
}

Future<String> getAJokeDelayed() {
  return new Future<String>.delayed(new Duration(milliseconds: 2000),() {
    // Do a long running task. E.g. Network Call.
    // Return the result

    return "This is a delayed joke.";
  });
}
