import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [_cardTipo1()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text("Titulo del Card"),
            subtitle: Text(
                "Descripción de las tarjetas para mostrar los componentes de Flutter, Descripción de las tarjetas para mostrar los componentes de Flutter"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text("Cancelar")),
              FlatButton(onPressed: () {}, child: Text("Ok"))
            ],
          )
        ],
      ),
    );
  }
}
