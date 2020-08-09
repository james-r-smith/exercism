class Isogram {
  bool isIsogram(String word) {
    if (word.isEmpty) return true;

    var sanitizedWord = RegExp(r'[a-zA-Z]')
        .allMatches(word)
        .map((m) => m.group(0).toLowerCase())
        .toList();

    var map = <String, int>{};
    for (var letter in sanitizedWord) {
      map[letter] = 1 + (map[letter] ?? 0);
    }
    return map.values.every((e) => e == 1);
  }
}
