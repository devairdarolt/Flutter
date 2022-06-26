import 'package:flutter/material.dart';

import '../models/categoria.dart';

class CategoriaController {
  List<Categoria> categorias = [
    Categoria(id: 0, nome: 'Alimentos', icon: Icon(Icons.fastfood)),
    Categoria(id: 1, nome: 'Bebidas', icon: Icon(Icons.local_bar)),
    Categoria(id: 2, nome: 'Limpeza', icon: Icon(Icons.local_laundry_service)),
    Categoria(id: 3, nome: 'Higiene', icon: Icon(Icons.local_hospital)),
    Categoria(id: 4, nome: 'Bolsas', icon: Icon(Icons.local_offer)),
    Categoria(id: 5, nome: 'Roupas', icon: Icon(Icons.local_mall)),
    Categoria(
        id: 6,
        nome: 'Eletrônicos',
        icon: Icon(Icons.electrical_services_outlined)),
  ];
}
