import 'package:flutter/material.dart';
import 'package:meuAppteste/rotas/ListaAgendamentos.dart';

class Agendamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listaAgendamentos(),

      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Lista de agendamentos '),
      ),
      // AppBar
      // ignore: missing_required_param
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, 'CriarAgendamento');
          }),
    );
  }
}
