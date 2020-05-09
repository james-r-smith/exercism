pub fn build_proverb(list: &[&str]) -> String {
    if list.is_empty() {
        return String::new();
    }
    let proverb = list
        .windows(2)
        .map(|input_tuple| {
            format!(
                "For want of a {} the {} was lost.\n",
                input_tuple[0], input_tuple[1]
            )
        })
        .collect::<String>();
    proverb + &format!("And all for the want of a {}.", list[0])
}
