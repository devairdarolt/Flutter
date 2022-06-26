import 'package:flutter/material.dart';

import '../models/produto.dart';

class ProdutoWidget extends StatefulWidget {
  ProdutoWidget({required this.produto});

  //
  late Produto produto;

  //
  @override
  State<ProdutoWidget> createState() => _ProdutoWidgetState();
}

class _ProdutoWidgetState extends State<ProdutoWidget> {
  @override
  Widget build(BuildContext context) {
    Icon icon = widget.produto.categoria!.icon!;
    return ListTile(
      leading: icon,
      iconColor: Color.fromARGB(255, 0, 0, 0),
      title: Text(widget.produto.nome!),
      subtitle: Text(widget.produto.preco!.toString()),
    );
  }
}
