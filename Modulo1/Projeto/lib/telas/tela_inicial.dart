import 'package:aula4/controllers/produto_controller.dart';
import 'package:aula4/models/produto.dart';
import 'package:aula4/views/produto_widget.dart';
import 'package:flutter/material.dart';

import 'nova_compra.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({Key? key}) : super(key: key);

  ProdutoController produtoController = ProdutoController();

  //
  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    List<Produto> produtos = widget.produtoController.produtos;
    //
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Compras'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_sweep_outlined),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text("Limpar Lista"),
                      content: const Text("Deseja limpar a lista de compras?"),
                      actions: [
                        ElevatedButton(
                          child: const Text("Não"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ElevatedButton(
                          child: const Text("Sim"),
                          onPressed: () {
                            setState(() {
                              widget.produtoController.limparLista();
                            });
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: produtos.length,
          itemBuilder: (context, index) {
            return ProdutoWidget(produto: produtos[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NovaCompra()));
        },
      ),
    );
  }
}
