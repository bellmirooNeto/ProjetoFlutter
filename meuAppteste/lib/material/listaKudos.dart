import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meuAppteste/material/Itemkudo.dart';

class listaKudos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemKudo('Um Kudo estudante', 'Você estava prestando atenção',
            Icons.thumb_up),
        ItemKudo('Um Kudo lol', 'Você estava jogando lol na aula', Icons.thumb_down),
      ],
    );
  }
}
