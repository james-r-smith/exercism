class PhoneNumber {
  String clean(String phoneNumber) {
    if (phoneNumber.contains(RegExp(r'[a-zA-Z]'))) {
      throw FormatException('letters not permitted');
    } else if (phoneNumber.contains(RegExp(r'[^0-9()-.\s]'))) {
      throw FormatException('punctuations not permitted');
    }

    var sanitizedNumber = String.fromCharCodes(phoneNumber.runes
        .where((r) => r >= '0'.codeUnitAt(0) && r <= '9'.codeUnitAt(0)));

    // validate we have enough digits
    if (sanitizedNumber.length < 10) {
      throw FormatException('incorrect number of digits');
    } else if (sanitizedNumber.length > 11) {
      throw FormatException('more than 11 digits');
    }

    // validate country code
    if (sanitizedNumber.length == 11) {
      var countryCode = sanitizedNumber[0];
      sanitizedNumber = sanitizedNumber.substring(1);
      if (countryCode != '1') {
        throw FormatException('11 digits must start with 1');
      }
    }

    // validate area code
    var areaCode = sanitizedNumber.substring(0, 3);
    if (areaCode[0].codeUnitAt(0) == '0'.codeUnitAt(0)) {
      throw FormatException('area code cannot start with zero');
    } else if (areaCode[0].codeUnitAt(0) == '1'.codeUnitAt(0)) {
      throw FormatException('area code cannot start with one');
    }

    // validate exchange code
    var exchangecode = sanitizedNumber.substring(3);
    if (exchangecode[0].codeUnitAt(0) == '0'.codeUnitAt(0)) {
      throw FormatException('exchange code cannot start with zero');
    } else if (exchangecode[0].codeUnitAt(0) == '1'.codeUnitAt(0)) {
      throw FormatException('exchange code cannot start with one');
    }

    return sanitizedNumber;
  }
}
