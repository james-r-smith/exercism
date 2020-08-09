class Raindrops {
  String convert(int number) {
    String sound = '';
    if (number % 3 == 0) {
      sound += 'Pling';
    }
    if (number % 5 == 0) {
      sound += 'Plang';
    }
    if (number % 7 == 0) {
      sound += 'Plong';
    }
    return sound.isNotEmpty ? sound : '$number';
  }
}
