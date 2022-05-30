import 'package:flutter/material.dart';

import 'tela_inicial.dart';

class Tela2 extends StatefulWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Tela 2'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Route<Object?> newRoute = MaterialPageRoute(
                builder: (context) => TelaInicial(),
              );
              Navigator.pushReplacement(context, newRoute);
            },
          ),
        ],
      ),
    );
  }
}
