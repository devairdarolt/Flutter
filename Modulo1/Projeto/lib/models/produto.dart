import 'package:flutter/cupertino.dart';

import 'categoria.dart';

class Produto {
  String? nome;
  double? preco;
  Categoria? categoria;

  Produto({this.nome, this.preco, this.categoria});
}
