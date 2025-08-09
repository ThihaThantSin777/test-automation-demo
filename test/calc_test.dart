import 'package:flutter_test/flutter_test.dart';
import 'package:test_automation_demo/src/calc.dart';

void main() {
  test('add() returns sum', () {
    expect(add(2, 3), 5);
  });
}