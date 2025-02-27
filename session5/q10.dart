/*

Employee Payroll System
Implement an employee payroll system.
Create a base Employee class with properties: name, id, and salary.
Implement a method calculateSalary() in the base class.
Create two subclasses:
- FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
- PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
salary based on hours worked.

 */
abstract class Employee {
  String name;
  String id;
  double salary;

  Employee({required this.name, required this.id, this.salary = 0.0});

  double calculateSalary();

  @override
  String toString() {
    return 'Employee: $name, ID: $id, Salary: \$${calculateSalary().toStringAsFixed(2)}';
  }
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee({
    required String name,
    required String id,
    required double salary,
    this.bonus = 0.0,
  }) : super(name: name, id: id, salary: salary);

  @override
  double calculateSalary() {
    return salary + bonus;
  }

  @override
  String toString() {
    return 'Full-Time ${super.toString()}, Bonus: \$${bonus.toStringAsFixed(2)}';
  }
}

class PartTimeEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;

  PartTimeEmployee({
    required String name,
    required String id,
    required this.hoursWorked,
    required this.hourlyRate,
  }) : super(name: name, id: id);

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }

  @override
  String toString() {
    return 'Part-Time ${super.toString()}, Hours Worked: $hoursWorked, Hourly Rate: \$${hourlyRate.toStringAsFixed(2)}';
  }
}

void main() {
  FullTimeEmployee fullTimeEmployee = FullTimeEmployee(
    name: 'Ahmed',
    id: 'FT123',
    salary: 50000,
    bonus: 5000,
  );

  PartTimeEmployee partTimeEmployee = PartTimeEmployee(
    name: 'Ali',
    id: 'PT456',
    hoursWorked: 20,
    hourlyRate: 15,
  );

  print(fullTimeEmployee);
  print(partTimeEmployee);
}
