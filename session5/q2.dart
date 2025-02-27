/*
Temperature Converter
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
*/
void main() {
  try {
    double celsiusToFahrenheit = convertTemperature(25.0, 'C');
    print('25.0 °C is ${celsiusToFahrenheit.toStringAsFixed(2)} °F');

    double fahrenheitToCelsius = convertTemperature(77.0, 'F');
    print('77.0 °F is ${fahrenheitToCelsius.toStringAsFixed(2)} °C');
  } catch (e) {
    print('Error: $e');
  }
}

double convertTemperature(double temperature, String unit) {
  if (unit == 'C') {
    return (temperature * 9 / 5) + 32;
  } else if (unit == 'F') {
    return (temperature - 32) * 5 / 9;
  } else {
    throw Exception(
        'Invalid , Please use "C" for Celsius or "F" for Fahrenheit.');
  }
}
