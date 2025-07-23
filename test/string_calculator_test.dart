import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_kata/string_calculator.dart';


void main() {

  test('Empty string returns 0', () {
    expect(add(''), 0);
  });

}
