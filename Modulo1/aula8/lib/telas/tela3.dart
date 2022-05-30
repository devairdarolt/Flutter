import 'package:flutter/material.dart';

class Tela3 extends StatefulWidget {
  const Tela3({Key? key}) : super(key: key);

  @override
  State<Tela3> createState() => _Tela1State();
}

class _Tela1State extends State<Tela3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 118, 0, 244),
        title: Text('Tela 3'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
