/*
Basic Arithmetic Calculator
Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
Handle cases where division by zero might occur.
 */
void main() {
  try {
    num additionresult = arithmeticCalculator(20, "+", 80);
    print(additionresult);
    num Subtractionresult = arithmeticCalculator(20, "-", 80);
    print(Subtractionresult);

    num multiResult = arithmeticCalculator(20, "*", 80);
    print(multiResult);

    num divisionResult = arithmeticCalculator(20, "/", 80);
    print(divisionResult);
  } on Exception catch (e) {
    print(e);
  }
}

arithmeticCalculator(
  int num1,
  String operator,
  int num2,
) {
  switch (operator) {
    case "+":
      num additionresult = num1 + num2;
      return additionresult;

    case "-":
      num Subtractionresult = num1 - num2;
      return Subtractionresult;

    case "*":
      num multiResult = num1 * num2;
      return multiResult;

    case "/":
      if (num1 == 0 || num2 == 0) {
        print("Cannot division by zero");
      }
      num multiResult = num1 * num2;
      return multiResult;

    default:
      throw Exception('Invalid operator. Please use +, -, *, or /.');
  }
}
