const BOUND: usize = 200_000;

pub fn nth(n: u32) -> u32 {
    let primes = sieve_of_eratosthenes(BOUND);
    primes[n as usize]
}

fn sieve_of_eratosthenes(bound: usize) -> Vec<u32> {
    let mut numbers = vec![true; bound];

    for i in 2..bound {
        if !numbers[i] {
            continue;
        }
        for j in (i * i..bound).step_by(i) {
            numbers[j] = false;
        }
    }

    numbers
        .into_iter()
        .enumerate()
        .skip(2)
        .filter_map(|(x, y)| if y { Some(x as u32) } else { None })
        .collect::<Vec<u32>>()
}
