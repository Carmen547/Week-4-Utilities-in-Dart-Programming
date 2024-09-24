import 'dart:io';

void main() {
  // String Manipulation
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;
  
  // String concatenation
  String greeting = "Hello, " + input;
  print("Concatenated String: $greeting");

  // String interpolation
  String interpolated = "Welcome to Dart, $input!";
  print("Interpolated String: $interpolated");

  // Substring extraction
  String substring = input.substring(0, 3);
  print("Substring (first 3 characters): $substring");

  // Case conversion
  print("Uppercase: ${input.toUpperCase()}");
  print("Lowercase: ${input.toLowerCase()}");

  // Reversing the string
  String reversed = input.split('').reversed.join('');
  print("Reversed String: $reversed");

  // Counting the length
  print("Length of the string: ${input.length}");

  // Collections
  List<String> stringList = [];
  Set<String> stringSet = {};
  Map<String, String> stringMap = {};

  // Adding items
  stringList.add(input);
  stringSet.add(input);
  stringMap[input] = greeting;

  // Removing an item from list
  stringList.removeAt(0);

  // Iterating over collections
  print("\nList contents:");
  for (var item in stringList) {
    print(item);
  }

  print("\nSet contents:");
  for (var item in stringSet) {
    print(item);
  }

  print("\nMap contents:");
  stringMap.forEach((key, value) {
    print("$key: $value");
  });

  // File Handling
  String filename = 'log.txt';
  String logEntry = "$greeting at ${DateTime.now()}";

  // Write to file
  try {
    File(filename).writeAsStringSync(logEntry + '\n', mode: FileMode.append);
    print("\nLog entry saved to $filename.");
  } catch (e) {
    print("Error writing to file: $e");
  }

  // Read from file
  try {
    String fileContents = File(filename).readAsStringSync();
    print("Contents of $filename:\n$fileContents");
  } catch (e) {
    print("Error reading from file: $e");
  }

  // Date and Time
  DateTime now = DateTime.now();
  DateTime futureDate = now.add(Duration(days: 5));
  DateTime pastDate = now.subtract(Duration(days: 5));
  
  print("\nCurrent Date and Time: $now");
  print("Future Date (5 days later): $futureDate");
  print("Past Date (5 days earlier): $pastDate");

  // Difference between two dates
  Duration difference = futureDate.difference(now);
  print("Difference between future date and now: ${difference.inDays} days");
}
