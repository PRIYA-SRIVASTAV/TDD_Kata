import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_kata/string_calculator.dart';


void main() {

  test('Empty string returns 0', () {
    expect(add(''), 0);
  });

  test('Single number returns its value', () {
    expect(add('5'), 5);
  });

  test('Two numbers, comma separated', () {
    expect(add('1,5'), 6);
  });

  test('Multiple numbers and newlines', () {
    expect(add('1,2,3'), 6);
    expect(add('1\n2,3'), 6);
  });

  test('Custom delimiter', () {
    expect(add('//;\n1;2'), 3);
    expect(add('//|\n4|5|6'), 15);
  });

  test('Negative numbers throw exception', () {
    expect(() => add('1,-2,3,-4'), throwsA(predicate((e) => e.toString().contains('negative numbers not allowed -2,-4'))));
  });
}
