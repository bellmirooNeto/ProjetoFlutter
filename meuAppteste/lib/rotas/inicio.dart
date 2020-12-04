import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bem vindo ao Easy Schedule",
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 40),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Text("Fazer Login"),
              ),
              SizedBox(height: 40),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'CadastroUsuarios');
                },
                child: Text("Realizar o seu cadastro"),
              )
            ],
          ),
        ));
  }
}
