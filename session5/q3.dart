/*

Check Leap Year
Write a function that determines if a given year is a leap year.
A year is a leap year if it is divisible by 4 but not divisible by 100, except if it is also divisible by 400.

 */
void main() {
  // Test the function with different years
  List<int> testYears = [1900, 2000, 2020, 2021, 2024, 2100];
  bool isLeapYear(int year) {
    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
      return true;
    } else {
      return false;
    }
  }

  for (int year in testYears) {
    if (isLeapYear(year)) {
      print('$year is a leap year.');
    } else {
      print('$year is not a leap year.');
    }
  }
}
