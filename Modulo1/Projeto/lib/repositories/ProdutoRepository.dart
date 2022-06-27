import 'package:flutter/material.dart';

import '../models/produto.dart';

class ProdutoRepository {
  //Lista de produtos
  static List<Produto> produtos = [
    Produto(
        icone: Icons.account_balance_outlined, nome: "produto 1", preco: 10.00),
    Produto(icone: Icons.abc_sharp, nome: "produto 2", preco: 20.00),
    Produto(icone: Icons.account_tree, nome: "produto 3", preco: 30.00),
    Produto(icone: Icons.adobe_rounded, nome: "produto 4", preco: 40.00),
  ];
}
