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

  test('supports custom delimiter like //;\\n1;2', () {
    final calc = StringCalculator();
    expect(calc.add('//;\n1;2'), 3);
  });

  test('throws exception when negative numbers are present', () {
    final calc = StringCalculator();
    expect(() => calc.add('1,-2,-4'), throwsA(predicate((e) => e.toString().contains('negative numbers not allowed -2,-4'))));
  });
}
