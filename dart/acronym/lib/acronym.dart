class Acronym {
  String abbreviate(String name) {
    return RegExp(r"([a-zA-Z]+([a-zA-Z']+)?)")
        .allMatches(name)
        .map((m) => m.group(0).toUpperCase()[0])
        .join();
  }
}
