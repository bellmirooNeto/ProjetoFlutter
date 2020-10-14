import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meuAppteste/material/Pedido.dart';
import 'package:meuAppteste/material/listakudos.dart';

class AulaMaterialApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listaKudos(),

      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Lista de pedidos da lanchonete '),
      ),
      // AppBar
      // ignore: missing_required_param
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
