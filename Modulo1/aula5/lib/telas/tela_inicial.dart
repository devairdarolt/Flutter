import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  void funcaoBotao() {
    print("IconButton Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.ac_unit_outlined, color: Colors.white),
            onPressed: funcaoBotao,
          ),
          //
          // leading: Container(
          //   color: Colors.black,
          //   child: Icon(
          //     Icons.ac_unit_sharp,
          //     color: Colors.white,
          //   ),
          // ),
          //
          title: const Text("Exemplo AppBar"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 92, 48),
        ),
        body: Container(
          color: Color.fromARGB(255, 0, 183, 207),
          margin: const EdgeInsets.symmetric(vertical: 8),
          height: 100,
          padding: const EdgeInsets.all(8),
        ));
  }
}
