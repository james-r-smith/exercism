pub fn sum_of_multiples(limit: u32, factors: &[u32]) -> u32 {
    let factors: Vec<u32> = factors.iter().cloned().filter(|&f| f > 0).collect();
    (1..limit).fold(0, |mut acc, num| {
        if let Some(_factor) = factors.iter().find(|&&f| num % f == 0) {
            acc += num;
        }
        acc
    })
}
