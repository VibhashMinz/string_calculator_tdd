import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/calculator.dart';

void main() {
  test('returns 0 for empty string', () {
    final calc = StringCalculator();
    expect(calc.add(''), 0);
  });

  test('returns number itself for single input', () {
    final calc = StringCalculator();
    expect(calc.add('5'), 5);
  });

  test('returns sum for two comma-separated numbers', () {
    final calc = StringCalculator();
    expect(calc.add('1,2'), 3);
  });

  test('supports newline as delimiter', () {
    final calc = StringCalculator();
    expect(calc.add('1\n2,3'), 6);
  });
}
