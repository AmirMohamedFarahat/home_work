/*
2. Arithmetic Operators, Conditional Statements & Functions
Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
bonus based on the following rules:
- If the employee has worked for 5 or more years, they get a 10% bonus.
- Otherwise, they get a 5% bonus.
The function should return the bonus amount.
Then, call the function inside `main()` and print the result
 */
import 'dart:io';

void main() {
  print("Enter Number of years of work :");
  int yearsWorked = int.parse(stdin.readLineSync()!);
  print("Enter the salary of employee :");

  int salary = int.parse(stdin.readLineSync()!);

  calculateBonus(salary, yearsWorked);
}

void calculateBonus(int salary, int yearsWorked) {
  if (yearsWorked >= 5) {
    double bonus = salary * 10 / 100;
    print("the employee has bonus is : \$${bonus}' ");
  } else {
    double bonus = salary * 5 / 100;
    print("the employee has bonus is : \$${bonus}' ");
  }
}
