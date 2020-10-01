import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ItemKudo extends StatelessWidget {
  final String titulo;
  final String mensagem;
  final IconData icon;

  ItemKudo(this.titulo, this.mensagem, this.icon);
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(this.icon),
      title: Text(titulo),
      subtitle: Text(mensagem),
    ));
  }
}
