import 'dart:async';

import 'package:flutter/material.dart';

import '../repositories/ProdutoRepository.dart';
import 'tela_adicionar.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  //
  String retornoTela3 = '';

  @override
  Widget build(BuildContext context) {
    //Pega a lista de produtos
    var listaProdutos = ProdutoRepository.produtos;

    //Build
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de compras"),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.delete_forever),
              tooltip: 'Esvaziar lista de compras',
              onPressed: () {
                // handle the press
              })
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: irParaTelaAdicionar),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Text(listaProdutos[index].nome),
                trailing: Icon(listaProdutos[index].icone));
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: listaProdutos.length),
    );
  }

  void irParaTelaAdicionar() {
    print("abrir tela");

    MaterialPageRoute materialPageRoute = MaterialPageRoute(
      builder: (context) => TelaAdicionar(),
    );

    Navigator.push(
      context,
      materialPageRoute,
    ).then((value) {
      print(value);
    });
  }
}
