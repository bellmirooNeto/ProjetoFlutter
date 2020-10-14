import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meuAppteste/material/Itemkudo.dart';

class listaKudos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemKudo('Café', 'Pedido 001', Icons.local_cafe),
        ItemKudo('Hamburger', 'Pedido 002', Icons.fastfood),
        ItemKudo('Pizza G Portuguesa', 'Pedido 003', Icons.local_pizza),
        ItemKudo('Bolo de chocolate', 'Pedido 004', Icons.cake),
        ItemKudo('Refrigerante Coca 3L', 'Pedido 005', Icons.local_drink),
      ],
    );
  }
}
