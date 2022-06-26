import 'package:flutter/material.dart';

import '../models/produto.dart';

class ProdutoWidget extends StatefulWidget {
  ProdutoWidget({required this.produto, required this.onRemove});

  Function(Produto) onRemove;
  late Produto produto;

  @override
  State<ProdutoWidget> createState() => _ProdutoWidgetState();
}

class _ProdutoWidgetState extends State<ProdutoWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.personal_video_rounded),
      iconColor: Colors.green,
      title: Text(widget.produto.nome!),
      tileColor: Color.fromARGB(255, 0, 62, 16),
      subtitle: Text(widget.produto.preco!.toString()),
      textColor: Colors.white,
      trailing: IconButton(
        icon: Icon(Icons.delete),
        color: Colors.red,
        onPressed: () => widget.onRemove(widget.produto),
      ),
    );
  }
}
