class Anagram {
  bool _areAnagram(String first, String second) {
    var characterCount = List<int>.filled(26, 0);
    for (var i = 0; i < first.length; i++) {
      characterCount[first[i].codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
      characterCount[second[i].codeUnitAt(0) - 'a'.codeUnitAt(0)]--;
    }
    return characterCount.every((e) => e == 0);
  }

  List<String> findAnagrams(String word, List<String> candidates) {
    var lowercaseWord = word.toLowerCase();
    return candidates.where((c) {
      if (c.length != word.length) return false;
      var lowercaseCandidate = c.toLowerCase();
      return lowercaseCandidate != lowercaseWord &&
          _areAnagram(lowercaseWord, lowercaseCandidate);
    }).toList();
  }
}
