/**
 * Singleton são classes que mantém apenas uma instância. para todas as novas instancias criadas
 * Caso seja null ela cria uma nova instância. depois retorna essa instancia para cada nova chamada
 */
class Singleton {
  //Objeto privado Que contém a referência para a instância única de si
  static Singleton? _instance;

  int x = 0;

  Singleton._();

  //Forma 1
  // factory Singleton() {
  //   return _instance ??= Singleton._();
  // }

  //Forma 2
  factory Singleton() {
    if (_instance == null) {
      _instance = Singleton._();
    }
    return _instance!;
  }

  //Forma 3
  //factory Singleton.getInstance() => _instance ??= Singleton._();

  int incrementa() {
    return ++x;
  }

  @override
  String toString() {
    return "X = $x";
  }
}
