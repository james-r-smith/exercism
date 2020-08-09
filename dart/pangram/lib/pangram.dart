class Pangram {
  bool isPangram(String input) {
    if (input.isEmpty) return false;
    var s = RegExp(r'[a-zA-Z]')
        .allMatches(input)
        .map((m) => m.group(0).toLowerCase())
        .toSet();
    return s.length == 26;
  }
}
