import 'package:aula4/models/contato.dart';
import 'package:flutter/cupertino.dart';

class ListaContatosController {
  TextEditingController nomeController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();

  List<Contato> contatos = [
    Contato(nome: "Contato 1", telefone: "1111-1111"),
    Contato(nome: "Contato 2", telefone: "2222-2222"),
    Contato(nome: "Contato 3", telefone: "3333-3333"),
    Contato(nome: "Contato 4", telefone: "4444-4444"),
    Contato(nome: "Contato 5", telefone: "5555-5555"),
  ];

  void salvar() {
    Contato contato = Contato(
      nome: nomeController.text,
      telefone: telefoneController.text,
    );
    contatos.add(contato);
    nomeController.clear();
    telefoneController.clear();
  }

  void removeContato(Contato contato) {
    contatos.remove(contato);
  }
}
