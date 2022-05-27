import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  //Controller para o TextField
  TextEditingController controller = TextEditingController();

  String texto = 'Tela Inicial';

  void funcaoBotao() {
    print("IconButton Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 226, 226),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.ac_unit_outlined, color: Colors.white),
          onPressed: funcaoBotao,
        ),
        title: const Text("Exemplo AppBar"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        // child: ElevatedButton(
        //   child: const Text("Clique aqui"),
        //   onPressed: funcaoBotao,
        // ),
        child: Container(
          margin: const EdgeInsets.all(30),
          child: TextField(
            controller: controller,
            onSubmitted:
                textFildSubmited, // (x) => print(x), ou (x) => textFildSubmited(x), ou (x){print(x);} // VARIAS FORMAS DE FAZER
            decoration: InputDecoration(
              labelText: "Nome",
              hintText: "Nome Sobrenome ",
              prefixIcon:
                  Icon(Icons.apple, color: Color.fromARGB(255, 42, 41, 41)),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: funcaoBotaoModoAviao,
        child: const Icon(Icons.airplanemode_inactive_outlined,
            color: Color.fromARGB(255, 255, 255, 255)),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, //Botão flutuante
    );
  }

  //Evento do TextField
  void textFildSubmited(String value) {
    print("TextField Submited: $value");
  }

  void funcaoBotaoModoAviao() {
    print("O valor de TextFild é ${controller.text}");
  }
}
