class Bob {
  String response(String message) {
    var msg = message.trim();
    if (_saidNothing(msg)) {
      return 'Fine. Be that way!';
    } else if (_askedQuestion(msg)) {
      if (_yelledAt(msg)) {
        return 'Calm down, I know what I\'m doing!';
      }
      return 'Sure.';
    } else if (_yelledAt(msg)) {
      return 'Whoa, chill out!';
    }
    return 'Whatever.';
  }

  bool _askedQuestion(String message) {
    return message.endsWith('?');
  }

  bool _yelledAt(String message) {
    var exp = RegExp(r'[a-zA-Z]');
    var letters = exp.allMatches(message).map((m) => m.group(0));
    return !letters.isEmpty && letters.every((l) => l != l.toLowerCase());
  }

  bool _saidNothing(String message) {
    return message.isEmpty;
  }
}
