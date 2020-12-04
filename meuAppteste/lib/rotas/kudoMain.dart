import 'package:flutter/material.dart';
import 'package:meuAppteste/rotas/CadastroUsuarios.dart';
import 'package:meuAppteste/rotas/Realizado.dart';
import 'package:meuAppteste/rotas/Agendamentos.dart';
import 'package:meuAppteste/rotas/inicio.dart';
import 'package:meuAppteste/rotas/login.dart';
import 'package:meuAppteste/rotas/CriarAgendamento.dart';

class KudoMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'inicio',
        routes: {
          'inicio': (context) => inicio(),
          'login': (context) => login(),
          'CriarAgendamento': (context) => CriarAgendamento(),
          'Agendamentos': (context) => Agendamentos(),
          'CadastroUsuarios': (context) => CadastroUsuarios(),
          'Realizado': (context) => Realizado(),
        });
  }
}
