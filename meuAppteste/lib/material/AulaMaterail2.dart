import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Lista de pedidos'),
      ),
      body: buildListView(),
    ));
  }

  buildListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.local_cafe),
          title: Text('Café'),
          subtitle: Text('Pedido 001'),
        ),
        ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('Hamburger'),
          subtitle: Text('Pedido 002'),
        ),
        ListTile(
          leading: Icon(Icons.local_pizza),
          title: Text('Pizza G Portuguesa'),
          subtitle: Text('Pedido 003'),
        ),
        ListTile(
          leading: Icon(Icons.cake),
          title: Text('Bolo de chocolate'),
          subtitle: Text('Pedido 004'),
        ),
        ListTile(
          leading: Icon(Icons.local_drink),
          title: Text('refrigerante Coca 3L'),
          subtitle: Text('Pedido 005'),
        ),
      ],
    );
  }
}
