pub fn is_armstrong_number(num: u32) -> bool {
    let mut digits = vec![];
    let mut mut_num = num;

    while mut_num > 0 {
        let digit = mut_num % 10;
        digits.push(digit);
        mut_num /= 10;
    }

    let num_digits = digits.len() as u32;
    let res = digits
        .into_iter()
        .fold(0, |acc, digit| acc + digit.pow(num_digits));
    num == res
}
