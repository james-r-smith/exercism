class PrimeFactors {
  List<int> factors(int number) {
    var primeFactors = <int>[];
    if (number < 2) return primeFactors;
    int prime = 2;
    int n = number;
    while (n >= (prime * prime)) {
      if (n % prime == 0) {
        primeFactors.add(prime);
        n ~/= prime;
      } else {
        prime += 1;
      }
    }
    primeFactors.add(n);
    return primeFactors;
  }
}
