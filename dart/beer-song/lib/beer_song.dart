class BeerSong {
  String verse(int number) {
    if (number == 2) {
      return '''$number bottles of beer on the wall, $number bottles of beer.
Take one down and pass it around, ${number - 1} bottle of beer on the wall.''';
    } else if (number == 1) {
      return '''$number bottle of beer on the wall, $number bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.''';
    } else if (number == 0) {
      return '''No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.''';
    }
    return '''$number bottles of beer on the wall, $number bottles of beer.
Take one down and pass it around, ${number - 1} bottles of beer on the wall.''';
  }

  Iterable<int> _reverseRange(int high, int low) sync* {
    for (var i = high; i > low; --i) {
      yield i;
    }
  }

  List<String> recite(int start, int verseCount) {
    return _reverseRange(start, start - verseCount)
        .map(verse)
        .join('\n\n')
        .split('\n');
  }
}
