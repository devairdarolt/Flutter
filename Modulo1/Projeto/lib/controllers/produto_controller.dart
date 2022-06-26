import 'package:aula4/controllers/categoria_controller.dart';
import 'package:aula4/models/produto.dart';
import 'package:flutter/material.dart';

import '../models/categoria.dart';

class ProdutoController {
  //Padrão Singleton
  static ProdutoController? _instance;
  CategoriaController categoriaController = CategoriaController();
  List<Produto> produtos = [];

  ProdutoController._();

  factory ProdutoController() {
    if (_instance == null) {
      _instance = ProdutoController._();
      _instance!.produtos = [];
      _instance!.categoriaController = CategoriaController();
    }
    return _instance!;
  }

  TextEditingController nomeController = TextEditingController();
  int selectedCategoria = 0;

  void adicionarProduto() {
    Produto produto = Produto(
      nome: nomeController.text,
      preco: double.parse(nomeController.text),
      categoria: categoriaController.categorias[selectedCategoria],
    );
    produtos.add(produto);
    nomeController.clear();
  }

  void limparLista() {
    produtos.clear();
  }

  void removerProduto(int index) {
    produtos.removeAt(index);
  }

  //gets
  List<Produto> get getProdutos => produtos;
  CategoriaController get getCategoriaController => categoriaController;

  void addProduto(String text, int i) {
    Produto produto = Produto(
      nome: text,
      preco: double.parse("9.99"),
      categoria: categoriaController.categorias[i],
    );
    produtos.add(produto);
  }
}
