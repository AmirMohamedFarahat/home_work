/*
Find Prime Numbers in a Range
Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
them.
Ensure that the function correctly identifies prime numbers and handles edge cases where start is
greater than end.

 */
bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

List<int> findPrimesInRange(int start, int end) {
  if (start > end) {
    return [];
  }

  List<int> primes = [];
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }

  return primes;
}

void main() {
  // Example usage
  int start = 10;
  int end = 50;
  List<int> primeNumbers = findPrimesInRange(start, end);

  print('Prime numbers between $start and $end: $primeNumbers');

  int invalidStart = 30;
  int invalidEnd = 20;
  List<int> noPrimes = findPrimesInRange(invalidStart, invalidEnd);
  print('Prime numbers between $invalidStart and $invalidEnd: $noPrimes');
}
