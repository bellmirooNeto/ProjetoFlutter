import 'package:flutter/material.dart';

class Realizado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageColaborador = Image.network(
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fbr.depositphotos.com%2Fstock-photos%2Fpizza.html&psig=AOvVaw3IMOBWQS_zGlBAjRI1HjZf&ust=1602721986919000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLCF-MbqsuwCFQAAAAAdAAAAABAD');
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Angendamento realizado com sucesso",
              style: TextStyle(fontSize: 20)),
          SizedBox(height: 40),
          imageColaborador,
          SizedBox(height: 20),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Voltar para a lista"),
          )
        ],
      ),
    ));
  }
}
