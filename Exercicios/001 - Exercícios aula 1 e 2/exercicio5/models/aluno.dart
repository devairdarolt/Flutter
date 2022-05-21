class Aluno {
  String? _nome;
  int? _idade;
  List<double>? _notas;

  Aluno() {}

  Aluno.allAttr(String? nome, int? idade, List<double>? notas) {
    this._nome = nome!;
    this._idade = idade!;
    this._notas = notas!;
  }

  void set nome(String nome) {
    this._nome = nome;
  }

  String get nome => this._nome!;

  void set idade(int idade) {
    this._idade = idade;
  }

  int get idade => this._idade!;

  void set notas(List<double> notas) {
    this._notas = notas;
  }

  List<double> get notas => this._notas!;

  void addNota(double nota) {
    this._notas?.add(nota);
  }

  double calcularMedia() {
    double soma = 0;
    for (double nota in this._notas!) {
      soma += nota;
    }
    return soma / this._notas!.length;
  }

  bool get isAprovado => this.calcularMedia() > 7;

  @override
  String toString() {
    double media = this.calcularMedia();
    String situacao = """
    Nome: $nome,
    Idade: $idade,
    Notas: $notas,
    Média: $media,
    Situação: ${isAprovado ? 'Aprovado' : 'Reprovado'}
    """;
    return situacao;
  }
}
