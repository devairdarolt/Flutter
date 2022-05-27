import 'package:flutter/material.dart';

import '../models/contato.dart';

class ContatoWidget extends StatefulWidget {
  ContatoWidget({required this.contato, required this.onRemove});

  Function(Contato) onRemove;
  late Contato contato;

  @override
  State<ContatoWidget> createState() => _ContatoWidgetState();
}

class _ContatoWidgetState extends State<ContatoWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      iconColor: Colors.green,
      title: Text(widget.contato.nome!),
      tileColor: Color.fromARGB(255, 0, 62, 16),
      subtitle: Text(widget.contato.telefone!),
      textColor: Colors.white,
      trailing: IconButton(
        icon: Icon(Icons.delete),
        color: Colors.red,
        onPressed: () => widget.onRemove(widget.contato),
      ),
    );
  }
}
