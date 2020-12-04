import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:meuAppteste/rotas/Realizado.dart';

class Agendados extends StatelessWidget {
  final String nome;
  final String mensagem;
  final IconData icon;
  Agendados(this.nome, this.mensagem, this.icon);
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(this.icon),
      title: Text(nome),
      subtitle: Text(mensagem),
      onLongPress: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Realizado()),
        );
      },
    ));
  }
}
