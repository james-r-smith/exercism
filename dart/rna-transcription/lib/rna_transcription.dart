class RnaTranscription {
  String _toComplement(String nucleotide) {
    switch (nucleotide) {
      case 'G':
        return 'C';
      case 'C':
        return 'G';
      case 'T':
        return 'A';
      case 'A':
        return 'U';
      default:
        return null;
    }
  }

  String toRna(String dna) {
    return dna.split('').map(_toComplement).join();
  }
}
