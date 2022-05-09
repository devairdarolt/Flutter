import 'aluno.dart';

class AlunoMatutino extends Aluno {
  AlunoMatutino() {}

  @override
  bool get isAprovado => super.calcularMedia() >= 7;
}
