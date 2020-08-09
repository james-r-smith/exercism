import 'dart:math' show pow;

class DifferenceOfSquares {
  int squareOfSum(int number) {
    var total = 0;
    for (var i = 1; i <= number; i++) {
      total += i;
    }
    return pow(total, 2) as int;
  }

  int sumOfSquares(int number) {
    num total = 0;
    for (var i = 1; i <= number; i++) {
      total += pow(i, 2);
    }
    return total as int;
  }

  int differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquares(number);
  }
}
