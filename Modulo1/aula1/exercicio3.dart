void main(List<String> args) {
  List<int> lista = [1, 2, 3, 4, 5];
  somarElementos(lista: lista);
  somarElementos(lista: lista, sucessor: true);
}

void somarElementos({required List<int> lista, bool sucessor = false}) {
  int soma = 0;
  for (int i = 0; i < lista.length - 1; i++) {
    soma += lista[i];
  }
  if (sucessor) {
    soma += lista[lista.length - 1];
  }
  print(soma);
}
