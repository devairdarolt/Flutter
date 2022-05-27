import 'package:flutter/material.dart';

import '../controllers/lista_contatos_controller.dart';
import '../models/contato.dart';
import '../views/contato_widget.dart';

class TelaInicial extends StatefulWidget {
  //CONTROLLER DE CONTATOS
  ListaContatosController controller = ListaContatosController();

  //
  TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  //
  //
  @override
  Widget build(BuildContext context) {
    List<Contato> listaContatos = widget.controller.contatos;
    // Return a Scaffold
    return Scaffold(
      backgroundColor: Color.fromARGB(6, 0, 0, 0),
      appBar: createAppBar(),
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Column(children: [
              Container(
                color: Color.fromARGB(30, 0, 255, 64),
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: widget.controller.nomeController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Nome Sobrenome',
                    label: Text('Nome'),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(106, 10, 10, 10),
                    ),
                  ),
                ),
              ),
              Container(
                color: Color.fromARGB(30, 0, 255, 64),
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: widget.controller.telefoneController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '0000-0000',
                      label: Text('Telefone'),
                      hintStyle: TextStyle(
                        color: Color.fromARGB(108, 10, 10, 10),
                      )),
                ),
              ),
              ElevatedButton(onPressed: saveAndRender, child: Text('Salvar'))
            ]),
          ),
          Flexible(
            flex: 7,
            child: ListView.builder(
              itemCount: listaContatos.length,
              itemBuilder: (context, index) {
                return ContatoWidget(
                    contato: listaContatos[index], onRemove: removeAndRender);
              },
            ),
          ),
        ],
      ),
    );
  }

  // Função que cria uma AppBar
  AppBar createAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text("Lista de Contatos",
          style: TextStyle(color: Colors.green)),
    );
  }

  //EVENTOS

  void saveAndRender() {
    setState(() {
      widget.controller.salvar();
    });
  }

  void removeAndRender(Contato contato) {
    setState(() {
      widget.controller.removeContato(contato);
    });
  }
}
