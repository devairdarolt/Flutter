import 'package:flutter/material.dart';

import '../controllers/categoria_controller.dart';
import '../controllers/produto_controller.dart';
import '../models/categoria.dart';

class NovaCompra extends StatefulWidget {
  NovaCompra({Key? key}) : super(key: key);

  ProdutoController produtoController = ProdutoController();

  //
  @override
  State<NovaCompra> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<NovaCompra> {
  int? selected = 0;

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adicionar'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: TextField(
                  controller: widget.produtoController.nomeController,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                  ),
                ),
              ),
              Center(
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Categoria',
                  ),
                  items: lookupCategoria(),
                  onChanged: (int? value) {
                    setState(() {
                      this.selected = value!;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton.icon(
                  onPressed: () {
                    onPressed();
                  },
                  icon: Icon(Icons.add, size: 20),
                  label: Text("ADICIONAR"),
                ),
              )
            ],
          ),
        ));
  }

  List<DropdownMenuItem<int>> lookupCategoria() {
    List<DropdownMenuItem<int>> lista = []; // Nova lista vazia

    //Para cada item de categoriaController add na lista
    for (int i = 0;
        i < widget.produtoController.getCategoriaController.categorias.length;
        i++) {
      lista.add(
        DropdownMenuItem(
          child: Text(widget
              .produtoController.getCategoriaController.categorias[i].nome!),
          value:
              widget.produtoController.getCategoriaController.categorias[i].id!,
        ),
      );
    }

    //
    return lista;
  }

  void onPressed() {
    setState(() {
      widget.produtoController.addProduto(
          widget.produtoController.nomeController.text,
          widget.produtoController.getCategoriaController.categorias[selected!]
              .id!);
    });
    Navigator.pop(context);
  }
}
