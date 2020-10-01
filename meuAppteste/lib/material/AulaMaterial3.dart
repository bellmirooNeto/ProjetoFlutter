import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meuAppteste/material/listakudos.dart';

class AulaMaterialApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listaKudos(),
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text('Kudos '),
      ), // AppBar
      // ignore: missing_required_param
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
