class WordCount {
  Map<String, int> countWords(String phrase) {
    var exp = RegExp(r"(([a-zA-Z0-9]+)('[a-zA-Z]+)?)");
    var words = exp.allMatches(phrase).map((e) => e.group(0).toLowerCase());

    var wordMap = <String, int>{};
    for (var word in words) {
      wordMap[word] = 1 + wordMap.putIfAbsent(word, () => 0);
    }
    return wordMap;
  }
}
