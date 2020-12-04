import 'package:flutter/material.dart';
import 'package:meuAppteste/material/Itemkudo.dart';
import 'package:meuAppteste/rotas/Agendados.dart';

class listaAgendamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    backgroundColor:
    Colors.indigo;
    return Column(
      children: <Widget>[
        Agendados(
            'Belmiro Bezerra Data: 20/11/2020',
            'Falar com o coordenador sobre problemas no prouni.',
            Icons.access_alarm),
        Agendados(
            'Felipe Gomes Data: 25/11/2020',
            'Falar com o coordenador sobre problemas nas notas. ',
            Icons.access_alarm),
        Agendados('Lucas Henrick Data: 27/11/2020',
            'Falar com o coordenador sobre pagamentos. ', Icons.access_alarm),
        Agendados('Boizao Queiroz Data: 29/11/2020',
            'Falar com o coordenador sobre professores.', Icons.access_alarm),
        Agendados('teste Data: 30/11/2020', 'Testando. ', Icons.access_alarm),
      ],
    );
  }
}
