import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  //Lista horizontal de strings
  List<String> stringList = [
    "String 1",
    "String 2",
    "String 3",
    "String 4",
    "String 5"
  ];

  //Lista vertical de inteiros
  List<int> verticalList = [1, 2, 3, 4];
  //
  @override
  Widget build(BuildContext context) {
    // Return a Scaffold
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: createAppBar(),
      //body: layout1(),
      //body: layout2(),
      body: layout3(),
    );
  }

  // Função que cria uma AppBar
  AppBar createAppBar() {
    return AppBar(
      leading: IconButton(icon: Icon(Icons.add), onPressed: addString),
      title: Text("Lista"),
      actions: [
        IconButton(icon: Icon(Icons.add), onPressed: addInteger),
      ],
    );
  }

  //EVENTOS

  //Adiciona um item na lista, se a lista for maior que 20 faz o clean
  void addString() {
    setState(() {
      stringList.add("String ${stringList.length + 1}");
      if (stringList.length > 20) {
        stringList.clear();
      }
    });
  }

  //Adiciona um item na lista, se a lista for maior que 20 faz o clean
  void addInteger() {
    setState(() {
      verticalList.add(verticalList.length + 1);
      if (verticalList.length > 9) {
        verticalList.clear();
      }
    });
  }

  //LAYOUTS

  // Função que cria um layout de colunas
  Column layout1() {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
        color: Colors.red,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        height: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
      ),
    ]);
  }

  // Função que cria um layout de lista de string
  ListView layout2() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        //return a Container to every index from stringList.lenhth
        return Container(
          height: 40,
          color: Color.fromARGB(255, 30, 30, 30),
          margin: const EdgeInsets.all(0.5),
          child: Center(
              child: Text(stringList[index],
                  style: TextStyle(color: Colors.white))),
        );
      },
      itemCount: stringList.length,
    );
  }

  // Cria um layout coluna com um child do tipo expanded
  Column layout3() {
    return Column(children: [
      Container(
        height: 70,
        color: Colors.red,
        child: createIntegerListView(),
      ),
      Expanded(child: layout2()),
      Container(
        height: 50,
        child: createRowWithContainerFlexible(),
      ),
    ]);
  }

  Row createRowWithContainerFlexible() {
    return Row(
      children: [
        Flexible(flex: 2, child: Container(color: Colors.green)),
        Flexible(flex: 4, child: Container(color: Colors.yellow)),
        Flexible(flex: 2, child: Container(color: Colors.orange)),
      ],
    );
  }

  ListView createIntegerListView() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        //return a Container to every index from stringList.lenhth
        return Container(
          width: 100,
          color: const Color.fromARGB(255, 236, 178, 52),
          margin: const EdgeInsets.all(1),
          child: Center(child: Text(verticalList[index].toString())),
        );
      },
      itemCount: verticalList.length,
    );
  }
}
