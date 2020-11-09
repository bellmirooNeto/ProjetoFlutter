import 'package:flutter/material.dart';

class CadastroProjetos extends StatelessWidget {
  // This widget is the root of your application.
  final TextEditingController _controladorCodigo = TextEditingController();
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorDescricao = TextEditingController();
  final TextEditingController _controladorGerenteProjetos =
      TextEditingController();
  final TextEditingController _controladorDataSpi1 = TextEditingController();
  final TextEditingController _controladorDataSpi2 = TextEditingController();
  final TextEditingController _controladorDataInicio = TextEditingController();
  final TextEditingController _controladorDataFim = TextEditingController();
  final TextEditingController _controladorDataReview = TextEditingController();
  final TextEditingController _controladorDataRetrospectiva =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando projetos'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controladorCodigo,
                decoration: InputDecoration(labelText: 'Codigo'),
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
                  controller: _controladorDescricao,
                  decoration: InputDecoration(labelText: 'Descrição'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorGerenteProjetos,
                  decoration: InputDecoration(labelText: 'GerenteProjetos'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorDataSpi1,
                  decoration: InputDecoration(labelText: 'DataSpi1'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorDataSpi2,
                  decoration: InputDecoration(labelText: 'DataSpi2'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorDataInicio,
                  decoration:
                      InputDecoration(labelText: 'Data Inicio do projeto'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorDataFim,
                  decoration: InputDecoration(labelText: 'Data Fim do projeto'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorDataReview,
                  decoration: InputDecoration(labelText: 'Data review'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorDataRetrospectiva,
                  decoration: InputDecoration(labelText: 'Data Retrospectiva'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  child: Text('Cadastrar'),
                  onPressed: () {
                    final String codigo = _controladorCodigo.text;
                    final String nome = _controladorNome.text;
                    final String descricao = _controladorDescricao.text;
                    final String gerenteProjetos =
                        _controladorGerenteProjetos.text;
                    final String dataSpi1 = _controladorDataSpi1.text;
                    final String dataSpi2 = _controladorDataSpi2.text;
                    final String dataInicio = _controladorDataInicio.text;
                    final String dataFim = _controladorDataFim.text;
                    final String dataReview = _controladorDataReview.text;
                    final String dataRetrospectiva =
                        _controladorDataRetrospectiva.text;

                    final Projetos projetoNovo = Projetos(
                        codigo,
                        nome,
                        descricao,
                        gerenteProjetos,
                        dataSpi1,
                        dataSpi2,
                        dataInicio,
                        dataFim,
                        dataReview,
                        dataRetrospectiva);
                    print(projetoNovo);
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

class Projetos {
  final String codigo;
  final String nome;
  final String descricao;
  final String gerenteProjetos;
  final String dataSpi1;
  final String dataSpi2;
  final String dataInicio;
  final String dataFim;
  final String dataReview;
  final String dataRetrospectiva;

  Projetos(
    this.codigo,
    this.nome,
    this.descricao,
    this.gerenteProjetos,
    this.dataSpi1,
    this.dataSpi2,
    this.dataInicio,
    this.dataFim,
    this.dataReview,
    this.dataRetrospectiva,
  );

  @override
  String toString() {
    return 'Projetos{codigo: $codigo, nome: $nome, descricao: $descricao, gerenteProjetos: $gerenteProjetos, dataSpi1: $dataSpi1, dataSpi1: $dataSpi2, dataInicio: $dataInicio, dataFim: $dataFim, dataReview: $dataReview, dataRetrospectiva: $dataRetrospectiva}';
  }
}
