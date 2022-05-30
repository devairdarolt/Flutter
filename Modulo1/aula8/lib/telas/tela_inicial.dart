import 'package:flutter/material.dart';

import 'tela1.dart';
import 'tela2.dart';
import 'tela3.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  //
  String retornoTela3 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Ir para a página 1
            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text('Push(Tela 1)'),
                onPressed: () {
                  dynamic materialPageRoute = MaterialPageRoute(
                    builder: (context) => Tela1(),
                  );
                  Navigator.push(
                    context,
                    materialPageRoute,
                  );
                  //Navigator.pushNamed(context, '/tela1');
                },
              ),
            ),
            //Ir para a página 2
            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text('PushReplacement(Tela 2)'),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tela2(),
                      ));
                  //Navigator.pushNamed(context, '/tela2');
                },
              ),
            ),
            //Ir para a página 3 e Retornar um valor
            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: retornoTela3 == ''
                    ? Text('Push and return(Tela 3)')
                    : Text(retornoTela3),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tela3(),
                      )).then(
                    (value) {
                      retornoTela3 = value as String;
                    },
                  );
                  //Navigator.pushNamed(context, '/tela2');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
