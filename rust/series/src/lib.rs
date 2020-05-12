use std::iter::FromIterator;

pub fn series(digits: &str, len: usize) -> Vec<String> {
    if len == 0 {
        return vec!["".to_string(); digits.len() + 1];
    } else if len > digits.len() {
        return vec![];
    }
    digits
        .chars()
        .collect::<Vec<char>>()
        .windows(len)
        .map(String::from_iter)
        .collect()
}
