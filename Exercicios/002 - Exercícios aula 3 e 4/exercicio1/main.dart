void main(List<String> args) {
  funcA(3, 4).then((response) => print(response));
  funcA(7, 2).then((response) => print(response));

  funcB(3, 4).then((response) => print(response));
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
