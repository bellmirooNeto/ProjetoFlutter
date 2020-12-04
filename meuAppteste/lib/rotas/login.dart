import 'package:flutter/material.dart';

class login extends StatelessWidget {
  final TextEditingController _controladorMatricula = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Realizando login'),
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controladorMatricula,
                decoration: InputDecoration(labelText: 'Matricula'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorSenha,
                  decoration: InputDecoration(labelText: 'Senha'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  child: Text('Logar'),
                  onPressed: () {
                    final String matricula = _controladorMatricula.text;
                    final String senha = _controladorSenha.text;
                    if (matricula != "" && senha != "") {
                      Navigator.pushNamed(context, 'Agendamentos');
                    } else if (matricula == "" && senha == "") {
                      AlertDialog alert = AlertDialog(
                        title: Text("Erro"),
                        content: Text("Preencha os campos."),
                        backgroundColor: Colors.red,
                      );
                      // show the dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    } else if (matricula == "") {
                      AlertDialog alert = AlertDialog(
                        title: Text("Erro"),
                        content: Text("Preencha a matricula"),
                        backgroundColor: Colors.red,
                      );
                      // show the dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    } else if (senha == "") {
                      AlertDialog alert = AlertDialog(
                        title: Text("Erro"),
                        content: Text("Preencha a senha"),
                        backgroundColor: Colors.red,
                      );
                      // show the dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    }
                    final Usuarios usuarioNovo = Usuarios(matricula, senha);
                    print(usuarioNovo);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Usuarios {
  final String matricula;
  final String senha;

  Usuarios(
    this.matricula,
    this.senha,
  );
  @override
  String toString() {
    return 'Usuarios{ matricula: $matricula, senha: $senha}';
  }
}
