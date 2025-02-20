/*
9. OOP, Constructors & Getters
Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area.

 */

void main() {
  Rectangle rectangle = Rectangle(5.0, 10.0);

  print('The area of the rectangle is: ${rectangle.area}');
}

class Rectangle {
  late final double _width;
  late final double _height;

  Rectangle(double width, double height) {
    _width = width;
    _height = height;
  }

  double get area {
    return _width * _height;
  }
}
