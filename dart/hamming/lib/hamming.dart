class Hamming {
  int distance(String first, String second) {
    if (first.length != second.length) {
      if (first.isEmpty || second.isEmpty) {
        throw ArgumentError('no strand must be empty');
      }
      throw ArgumentError('left and right strands must be of equal length');
    }
    var distance = 0;
    for (var i = 0; i < first.length; i++) {
      if (first[i] != second[i]) distance++;
    }
    return distance;
  }
}
