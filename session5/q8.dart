/*
Sum of List Elements
Write a function that takes a list of numbers and returns the sum of all elements.
Example:
sumList([1, 2, 3, 4, 5]) -> 15
 */

void main() {
  // Example usage
  List<int> numbers = [1, 2, 3, 4, 5];
  int sumList(List<int> numbers) {
    return numbers.fold(0, (sum, number) => sum + number);
  }

  int total = sumList(numbers);

  print('The sum of the list elements is: $total'); // Output: 15

  List<int> anotherList = [10, 20, 30, 40];
  int anotherTotal = sumList(anotherList);
  print('The sum of the list elements is: $anotherTotal'); // Output: 100

  List<int> emptyList = [];
  int emptyTotal = sumList(emptyList);
  print('The sum of the list elements is: $emptyTotal'); // Output: 0
}
