import 'package:flutter/material.dart';

import 'telas/tela1.dart';
import 'telas/tela2.dart';
import 'telas/tela_inicial.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaInicial(),
      debugShowCheckedModeBanner: false,
    );
  }
}
