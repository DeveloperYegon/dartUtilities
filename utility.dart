import 'dart:io';
import 'package:intl/intl.dart';

void combinedApplication(String userInput) {
  // Step 1: Perform string manipulation
  String reversed = userInput.split('').reversed.join('');
  int length = userInput.length;
  print('Reversed string: $reversed');
  print('String length: $length');

  // Step 2: Store results in a collection (list)
  List<String> results = [];
  results.add('Original input: $userInput');
  results.add('Reversed: $reversed');
  results.add('Length: $length');

  // Step 3: Log current date and time
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
  results.add('Entry made on: $formattedDate');

  // Step 4: Save the data to a file
  try {
    File file = File('results.txt');
    file.writeAsStringSync(results.join('\n'));
    print('Results saved to results.txt');
  } catch (e) {
    print('Error saving to file: $e');
  }
}

void main() {
 
 

  // Combined application demo
  print('Enter a string:');
  String userInput = stdin.readLineSync()!;
  combinedApplication(userInput);
}

