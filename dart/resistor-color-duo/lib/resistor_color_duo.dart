class ResistorColorDuo {
  final List<String> colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  int colorCode(String colorName) {
    return colors.indexOf(colorName);
  }

  int value(List<String> colorNames) {
    return colorNames
        .map(colorCode)
        .where((code) => code != -1)
        .fold(0, (acc, code) => (acc * 10) + code);
  }
}
