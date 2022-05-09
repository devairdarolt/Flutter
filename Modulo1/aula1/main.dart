void main(List<String> args) {
  print('Hello, world!');

  //Primitivos
  int x = 3;
  print(x.gcd(9));
  int y = int.parse("-9");
  print(y.sign);

  double z = 3.14;
  print(z.round());

  //Encadeados
  List<int> obj = [1, 2, 3, 4, 5];
  //print(obj);

  List<String> obj2 = ['a', 'b', 'c', 'd', 'e'];
  obj2.remove('c');
  print(obj2);

  List dynamicList = [1, "2", 3.4, obj2];
  print(dynamicList);

  //Map
  Map<String, int> map = {
    'a': 1,
    'b': 2,
    'c': 3,
  };

  print(map);

  obj.forEach(imprimeInteiro);

  print("Outra forma\n");

  obj.forEach((element) {
    imprimeInteiro(element);
  });

  List<double> listaDeDoubles = [1.1, 2.2, 3.3, -4.4, 5.5];
  print(listaDeDoubles);

  List<double> aredondado = arredondaDouble(listaDeDoubles);
  print(aredondado);

  listaDeDoubles.forEach(imprimePropriedade);

  somaOpcional(3);

  somaNomeada(a: 4, b: 4);

  String? nulable;
  avoidNullPointer(nulable);
}

int imprimeInteiro(int i) {
  print("Valor da posição é $i");
  return i;
}

List<double> arredondaDouble(List<double> d) {
  for (double x in d) {
    x = x.roundToDouble();
    print(x.round());
  }
  return d;
}

void imprimePropriedade(double d) {
  print("O sinal da posição é: ${d.sign}");
}

/**
 * Parametros opcionais
 */
int somaOpcional(int a, [int b = 3]) {
  print(a + b);
  return a + b;
}

int somaNomeada({required int a, int b = 3}) {
  print(a + b);
  return a + b;
}

/**
 * Eaxemplo de declaração de uma variável null
 */
void nullSafety() {
  int? nullSafety = null;
}

/**
 *  faz com que list não gere um nullPointer caso string == null
 */
void avoidNullPointer(String? string) {
  print(string?.length);
}

void avoidNullPointer2() {
  String? podeSerNulo = null;
  print(podeSerNulo?.length);

  podeSerNulo = "teste";

  //se podeSerNulo estiver null então value = "default"
  String value = podeSerNulo ?? "default";
}
