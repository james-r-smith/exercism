pub fn brackets_are_balanced(string: &str) -> bool {
    let mut stack = vec![];
    for c in string.chars() {
        match c {
            '{' => stack.push('}'),
            '[' => stack.push(']'),
            '(' => stack.push(')'),
            '}' | ']' | ')' => {
                if let Some(val) = stack.pop() {
                    if val != c {
                        return false;
                    }
                } else {
                    return false;
                }
            }
            _ => {}
        };
    }
    stack.is_empty()
}
