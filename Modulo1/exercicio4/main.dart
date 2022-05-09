import 'dart:math';

import 'models/aluno.dart';

void main(List<String> args) {
  Aluno aluno = Aluno();
  aluno.nome = 'João';
  aluno.idade = 20;
  aluno.notas = [];
  geraNotas(aluno);
  print(aluno.toString());

  aluno = Aluno.allAttr('Maria', 18, []);
  geraNotas(aluno, 8);
  print(aluno.toString());
}

void geraNotas(Aluno aluno, [int nrProvas = 2]) {
  for (int i = 0; i < nrProvas; i++) {
    double nota = Random().nextDouble() * 10;
    aluno.addNota(nota);
  }
}
