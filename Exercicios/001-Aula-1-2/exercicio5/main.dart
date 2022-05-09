import 'dart:math';

import 'models/aluno.dart';
import 'models/aluno_matutino.dart';
import 'models/aluno_vespertino.dart';

void main(List<String> args) {
  AlunoMatutino alunoMatutino = AlunoMatutino();
  alunoMatutino.nome = 'Tonho';
  alunoMatutino.idade = 28;
  alunoMatutino.notas = [];
  geraNotas(alunoMatutino, 3);
  print(alunoMatutino.toString());

  AlunoVespertino alunoVespertino = AlunoVespertino();
  alunoVespertino.nome = 'Joana';
  alunoVespertino.idade = 25;
  alunoVespertino.notas = [];
  geraNotas(alunoVespertino);
  print(alunoVespertino.toString());
}

void geraNotas(Aluno aluno, [int nrProvas = 2]) {
  for (int i = 0; i < nrProvas; i++) {
    double nota = Random().nextDouble() * 10;
    aluno.addNota(nota);
  }
}
