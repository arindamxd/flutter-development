import 'dart:async';

// Asynchronous and Importing Library in Dart #2
// Created by Arindam Karmakar on 27/8/19.

/// Async/Await
///
/// As you can see we have added the async keyword before the curly brace of
/// our main function on line 3 (we will come to that later). We have added
/// await keyword before calling the getAJoke function, what this does is wait
/// for the result to be returned from the Future before moving forward. We
/// have wrapped our code in a try/catch block we want to catch any exception
/// (which we caught before using the catchError callback). To use the keyword
/// await you will have to mark the function with async keyword, else it won’t
/// work.

main() async {
  try {
    String result = await getAJoke();
    print(result);
  } catch(e) {
    print(e);
  }

  print('Another print statement.');
}

Future<String> getAJoke() {
  return new Future<String>.delayed(new Duration(milliseconds: 2000),() {
    //Do a long running task. E.g. Network Call.
    //Return the result

    return "This is a joke";
  });
}