import 'package:flutter/material.dart';
import 'package:meuAppteste/material/Pedido.dart';
import 'package:meuAppteste/material/AulaMaterial3.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'Lista',
        routes: {
          'Lista': (context) => AulaMaterialApp3(),
          'pedido': (context) => Pedido(),
        });
  }
}
