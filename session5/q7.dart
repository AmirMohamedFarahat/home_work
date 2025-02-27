/*
Reverse a String
Write a function that takes a string as input and returns the string reversed.
Example:
reverseString('hello') -> 'olleh'

 */

void main() {
  // Example usage
  String original = 'hello';
  String reverseString(String input) {
    return input.split('').reversed.join('');
  }

  String reversed = reverseString(original);

  print('Original: $original');
  print('Reversed: $reversed');

  // Test with another example
  String anotherString = 'Dart Programming';
  String anotherReversed = reverseString(anotherString);
  print('Original: $anotherString');
  print('Reversed: $anotherReversed');
}
