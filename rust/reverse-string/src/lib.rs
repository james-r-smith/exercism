#[cfg(feature = "grapheme")]
use unicode_segmentation::UnicodeSegmentation;

#[cfg(not(feature = "grapheme"))]
pub fn reverse(input: &str) -> String {
    if input.is_empty() {
        return String::new();
    }
    input.chars().rev().collect::<String>()
}

#[cfg(feature = "grapheme")]
pub fn reverse(input: &str) -> String {
    if input.is_empty() {
        return String::new();
    }
    UnicodeSegmentation::graphemes(input, true)
        .rev()
        .collect::<String>()
}
