import 'package:flutter/material.dart';

//import '../repositories/ProdutoRepository.dart';

class TelaAdicionar extends StatefulWidget {
  TelaAdicionar({Key? key}) : super(key: key);

  @override
  State<TelaAdicionar> createState() => _TelaAdicionar();
}

class _TelaAdicionar extends State<TelaAdicionar> {
  @override
  Widget build(BuildContext context) {
    //Lista de produtos

    //Build Scafold
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          title: const Text('Novo produto'),
        ),
        body: Center(
            child: Column(
          children: [
            //Primeiro elemento Input do nome
            Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome',
                ))),
            //Segundo elemento Input do Preço
            Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Preço',
                ))),
            //Terceiro elemento Input da categoria
            Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Categoria',
                ))),
            //Botão de salvar
            Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text("Salvar"),
                  onPressed: onPressedSaveAndBack,
                )),
          ],
        )));
  }

  void onPressedSaveAndBack() {
    print("Salvar e voltar");
    Navigator.pop(context, "retorno");
  }
}
