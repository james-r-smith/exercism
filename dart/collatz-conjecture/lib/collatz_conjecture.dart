class CollatzConjecture {
  int steps(int number) {
    if (number < 1) {
      throw ArgumentError('Only positive numbers are allowed');
    }
    var count = 0;
    var n = number;
    while (n > 1) {
      count++;
      if (n % 2 == 0) {
        n ~/= 2;
      } else {
        n = (n * 3) + 1;
      }
    }
    return count;
  }
}
