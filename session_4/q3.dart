/*
3. Lists, Loops & If Conditions
Create a list of numbers. Iterate over the list and:
- If a number is even, print "Even: <number>".
- If a number is odd, print "Odd: <number>".
 */

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int number in numbers) {
    if (number % 2 == 0) {
      print("Even: $number");
    } else {
      print("Odd: $number");
    }
  }
}

// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   print("Enter the number you want to check :");
//   int number = int.parse(stdin.readLineSync()!);
//   // numbers.forEach((num) => number);
//   for (int number in numbers)
//     if (number == null || number > 10) {
//       print("Invalid input.");
//     } else if (number.isEven) {
//       print("Even: $number");
//     } else {
//       print("Odd: $number");
//     }
// }
