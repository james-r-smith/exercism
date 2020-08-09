import 'dart:math' show pow;

class ArmstrongNumbers {
  Iterable<int> _digits(int number) sync* {
    for (var i = number; i > 0; i ~/= 10) {
      yield i % 10;
    }
  }

  bool isArmstrongNumber(int number) {
    var digits = _digits(number).toList();
    var numDigits = digits.length;
    var res = digits.fold<num>(0, (acc, digit) => acc + pow(digit, numDigits));
    return number == res;
  }
}
