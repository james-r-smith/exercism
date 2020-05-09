pub fn reply(message: &str) -> &str {
    let message = message.trim();
    if said_nothing(message) {
        return "Fine. Be that way!";
    } else if asked_question(message) {
        if yelled_at(message) {
            return "Calm down, I know what I'm doing!";
        }
        return "Sure.";
    } else if yelled_at(message) {
        return "Whoa, chill out!";
    }
    "Whatever."
}

fn asked_question(message: &str) -> bool {
    message.ends_with('?')
}

fn yelled_at(message: &str) -> bool {
    let mut characters = message.chars();
    !characters.all(|c| !c.is_alphabetic()) && characters.all(|c| !c.is_lowercase())
}

fn said_nothing(message: &str) -> bool {
    message.is_empty()
}
