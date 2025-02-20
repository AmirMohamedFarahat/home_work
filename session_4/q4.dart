/*
4. Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their
prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a
given fruit.
- If the fruit is not found, return -1.
Call the functione inside `main()` and print the result.
 */
import 'dart:io';

void main() {
  Map<String, int> fruitPrices = {
    'apple': 80,
    'banana': 30,
    'mango': 45,
    'orange': 25,
  };

  print('Enter the name of the fruit :');
  String? fruitName = stdin.readLineSync();
  int getPrice(String fruitName) {
    if (fruitPrices.containsKey(fruitName)) {
      return fruitPrices[fruitName]!;
    } else {
      return -1;
    }
  }

  int price = getPrice(fruitName!);

  if (price != -1) {
    print('The price of $fruitName is \$${price}.');
  } else {
    print('Fruit not found.');
  }
}
