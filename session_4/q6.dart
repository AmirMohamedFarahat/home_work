/*
6. Null Safety, Encapsulation & Classes
Create a class `Person` with the following attributes:
- `String name`
- `int? age` (nullable)
- `bool isStudent` (default is false)
Implement:
- A constructor that initializes `name` and `age`.
- A method `displayInfo()` that prints the person's details.
In `main()`, create an instance of `Person` and call `displayInfo()`.
 */

void main() {
  Person person = Person(name: 'Amir', age: 33, isStudent: false);

  person.personInfo();
}

class Person {
  final String name;
  final int? age;
  bool isStudent = false;

  Person({required this.name, this.age, required this.isStudent});

  void personInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Is Student: ${isStudent}');
  }
}
