use rand::{thread_rng, Rng};

pub fn private_key(p: u64) -> u64 {
    thread_rng().gen_range(2, p)
}

pub fn public_key(p: u64, g: u64, a: u64) -> u64 {
    mod_pow(g, a, p)
}

pub fn secret(p: u64, b_pub: u64, a: u64) -> u64 {
    mod_pow(b_pub, a, p)
}

pub fn mod_pow(mut b: u64, mut e: u64, m: u64) -> u64 {
    if m == 1 {
        return 0;
    }
    b %= m;
    let mut r = 1;
    while e > 0 {
        if e & 1 == 1 {
            r = (r * b) % m;
        }
        e >>= 1;
        b = (b * b) % m;
    }
    r
}
