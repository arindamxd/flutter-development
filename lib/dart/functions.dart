// Created by Arindam Karmakar on 26/8/19.

main() {

  var fullName = getFullName("Chandler", "Bing");
  var firstName = getFirstName("Ross", "Galler");
  var lastName = getLastName(firstName: "Ross", lastName: "Galler");
  var message = getMessage(message: "Sorry $fullName, I am so");

  print("$fullName: Morning, $firstName!"); // > Chandler Bing: Morning, Ross!
  print("$fullName: You suppose to tell me something back!, $lastName."); // > Chandler Bing: You suppose to tell me something back!, Galler.
  print("$firstName: $message\n"); // > Ross: Sorry Chandler Bing, I am so Lazy

  out(printOutLoud); // > MESSAGE FROM INNER FUNCTION
}

/* Functions */
String getFullName(String firstName, String lastName) => "$firstName $lastName";
String getFirstName(String firstName, String lastName) {
  return "$firstName";
}

/* Named Parameters */
getLastName({String firstName, String lastName}) => "$lastName";

/* Default Parameter Values */
getMessage({String message, String reason = "Lazy"}) => "$message $reason";

/* Functions are First Class Objects */
out(void inner(String message)) {
  inner('Message from inner function');
}
printOutLoud(String message) {
  print(message.toUpperCase());
}