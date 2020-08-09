class Triangle {
  bool triangle(num a, num b, num c) {
    return (a > 0 && b > 0 && c > 0) &&
        (a + b >= c && b + c >= a && c + a >= b);
  }

  bool equilateral(num a, num b, num c) {
    return triangle(a, b, c) && (a == b && b == c);
  }

  bool isosceles(num a, num b, num c) {
    return triangle(a, b, c) && (a == b || b == c || c == a);
  }

  bool scalene(num a, num b, num c) {
    return triangle(a, b, c) && (a != b && b != c);
  }
}
