pub fn factors(n: u64) -> Vec<u64> {
    let mut prime_factors = vec![];
    if n < 2 {
        return prime_factors;
    }

    let mut n = n;
    let mut p = 2;
    while n >= (p * p) {
        if n % p == 0 {
            prime_factors.push(p);
            n /= p;
        } else {
            p += 1;
        }
    }
    prime_factors.push(n);

    prime_factors
}
