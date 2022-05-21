class ValorNegativoException implements Exception {
  late int x;

  ValorNegativoException(int x) {
    this.x = x;
  }

  @override
  String toString() {
    return 'ValorNegativoException: $x';
  }
}
