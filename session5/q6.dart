/*
Count Words in a Sentence
Write a function that counts the number of words in a given sentence.
Words are separated by spaces, and the function should ignore extra spaces.
 */
int countWords(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+'));

  return words.isNotEmpty && words[0].isNotEmpty ? words.length : 0;
}

void main() {
  // Example usage
  String sentence1 = "This is a sample sentence.";
  int wordCount1 = countWords(sentence1);
  print('The number of words in the sentence is: $wordCount1');

  String sentence2 = "   Count     the      words   in   this sentence.   ";
  int wordCount2 = countWords(sentence2);
  print('The number of words in the sentence is: $wordCount2');

  String sentence3 = "       ";
  int wordCount3 = countWords(sentence3);
  print('The number of words in the sentence is: $wordCount3');
}
