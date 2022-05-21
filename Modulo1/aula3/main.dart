import 'singleton.dart';
import 'valor_negativo_exception.dart';

Future<void> main(List<String> args) async {
  List<int> lista1 = await retornaLista();
  print(lista1);
  retornaLista().then((List<int> result) {
    print(result);
  });

  List<int> lista2 = [1, 2, 3, 4, 0];

  try {
    print(somaLista(lista2));
  } on ValorNegativoException catch (e) {
    print(e);
  } on Exception catch (e) {
    print(e);
  } on Error catch (e) {
    print(e.toString());
    print('Erro desconhecido');
  }

  //Usando Singleton
  Singleton s1 = Singleton();
  print(s1);
  //S2 é a mesma instância de S1
  Singleton s2 = Singleton();
  s2.incrementa();
  print(s2);
}

int somaLista(List<int> lista2) {
  int soma = 0;
  for (int value in lista2) {
    if (value.isNegative) {
      throw new ValorNegativoException(value);
    }
    if (value > 1000) {
      throw new Exception('Valor maior que 1000');
    }
    soma += value;
    if (value == 0) {
      soma = (soma / 3) as int; // Lança Erro de cast (soma / 3) as int
    }
  }
  return soma;
}

Future<List<int>> retornaLista() async {
  await espera3segundos();
  return [1, 2, 3];
}

Future<void> espera3segundos() async {
  return Future.delayed(Duration(seconds: 3)).whenComplete(() {});
}
