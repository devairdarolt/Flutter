class ValorIgualException implements Exception {
  late int x;

  ValorIgualException(int x) {
    this.x = x;
  }
  Future<String> errorFunction() async {
    return Future.error(new ValorIgualException(0), StackTrace.current);
  }

  @override
  String toString() {
    return 'ValorIgualException: $x';
  }
}
