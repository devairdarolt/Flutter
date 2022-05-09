import 'aluno.dart';

class AlunoVespertino extends Aluno {
  @override
  bool get isAprovado => super.calcularMedia() >= 6;
}
