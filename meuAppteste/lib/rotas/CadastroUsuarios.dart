import 'package:flutter/material.dart';

class CadastroUsuarios extends StatelessWidget {
  // This widget is the root of your application.
  final TextEditingController _controladorUsername = TextEditingController();
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorSobrenome = TextEditingController();
  final TextEditingController _controladorDataNascimento =
      TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando usuarios'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controladorUsername,
                decoration: InputDecoration(labelText: 'UserName'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorNome,
                  decoration: InputDecoration(labelText: 'Nome'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorSobrenome,
                  decoration: InputDecoration(labelText: 'Sobrenome'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorDataNascimento,
                  decoration: InputDecoration(labelText: 'Data de Nascimento'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorEmail,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
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
                  child: Text('Cadastrar'),
                  onPressed: () {
                    final String username = _controladorUsername.text;
                    final String nome = _controladorNome.text;
                    final String sobrenome = _controladorSobrenome.text;
                    final String dataNascimento =
                        _controladorDataNascimento.text;
                    final String email = _controladorEmail.text;
                    final String senha = _controladorSenha.text;

                    final Usuarios usuarioNovo = Usuarios(username, nome,
                        sobrenome, dataNascimento, email, senha);
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
  final String username;
  final String nome;
  final String sobrenome;
  final String dataNascimento;
  final String email;
  final String senha;

  Usuarios(
    this.username,
    this.nome,
    this.sobrenome,
    this.dataNascimento,
    this.email,
    this.senha,
  );
  @override
  String toString() {
    return 'Usuarios{username: $username, nome: $nome, sobrenome: $sobrenome, dataNascimento: $dataNascimento, email: $email, senha: $senha}';
  }
}
