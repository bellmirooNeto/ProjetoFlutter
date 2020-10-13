import 'package:flutter/material.dart';
import 'package:meuAppteste/rotas/KudoColaborador.dart';
import 'package:meuAppteste/rotas/Kudos.dart';
import 'package:meuAppteste/rotas/kudoAmizade.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'kudos',
        routes: {
          'kudos': (context) => Kudos(),
          'kudoColaborador': (context) => KudoColaborador(),
          'kudoAmizade': (context) => KudoAmizade()
        });
  }
}
