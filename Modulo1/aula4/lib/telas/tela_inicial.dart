import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  String texto = 'Inicial';

  void funcaoBotao() {
    setState(() {
      texto += 'A';
    });
    print(texto);
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
          color: Color.fromARGB(255, 22, 23, 23),
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          height: 100,
          width: 700,
          padding: const EdgeInsets.all(8),
          child: Text(
            texto, // Variável da classe TelaInicial
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ));
  }
}
