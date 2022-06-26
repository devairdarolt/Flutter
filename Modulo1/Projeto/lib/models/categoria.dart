import 'package:flutter/cupertino.dart';

class Categoria {
  int? id;
  String? nome;
  Icon? icon;

  Categoria({required this.id, required this.nome, required this.icon});

  Categoria.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    icon = json['icon'] != null ? Icon(json['icon']) : null;
  }
}
