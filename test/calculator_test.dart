import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/calculator.dart';

void main() {
  test('returns 0 for empty string', () {
    final calc = StringCalculator();
    expect(calc.add(''), 0);
  });
}
