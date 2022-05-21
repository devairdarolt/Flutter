import 'valor_igual_exception.dart';

void main(List<String> args) {
  //Exercício 1
  funcA(3, 4).then((response) => print(response));
  //Exercício 2
  funcB(3, 4).then((response) => print(response));
  //Exercício 3
  funcB(3, 4).whenComplete(() => null).then((value) => print(value));
  //Exercício 4
  funcAExceptionEqual(3, 3)
      //Se igual gera o erro
      .onError((error, stackTrace) => funcB(3, 3))
      //Then imprime o retorno de funcB
      .then((value) => print(value));
}

Future<int> funcB(int a, int b) async {
  int response = await funcA(a, b);
  return response * 2;
}

Future<int> funcA(int a, int b) async {
  int menor = 0;
  int maior = 0;
  if (b < a) {
    menor = b;
    maior = a;
  } else {
    menor = a;
    maior = b;
  }
  await espera3segundos(menor);
  return maior;
}

Future<void> espera3segundos(int menor) async {
  return Future.delayed(Duration(seconds: menor));
}

Future<int> funcBExceptionEqual(int a, int b) async {
  int response = await funcA(a, b);
  return response * 2;
}

Future<int> funcAExceptionEqual(int a, int b) async {
  int menor = 0;
  int maior = 0;
  if (a == b) {
    throw new ValorIgualException(a);
  }
  if (b < a) {
    menor = b;
    maior = a;
  } else {
    menor = a;
    maior = b;
  }
  await espera3segundos(menor);
  return maior;
}
