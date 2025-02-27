/*
Find the Longest Word
Write a function that takes a sentence as input and returns the longest word in the sentence.
If multiple words have the same longest length, return the first one that appears.
 */
String findLongestWord(String sentence) {
  List<String> words = sentence.split(RegExp(r'\s+'));
  String longestWord = '';

  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }

  return longestWord;
}

void main() {
  // Example usage
  String sentence = "I love programming in Dart language.";
  String longestWord = findLongestWord(sentence);

  print('The longest word is: $longestWord');

  String anotherSentence = "Find the longest word in this sentence.";
  String anotherLongestWord = findLongestWord(anotherSentence);
  print('The longest word is: $anotherLongestWord');
}
