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
        children: [
          _cardTipo1(),
          const SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          const SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          const SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          const SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          const SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
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

  Widget _cardTipo2() {
    final card = Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            image: NetworkImage(
                'https://s.libertaddigital.com/fotos/noticias/1920/1080/fit/tunez-la-guerra-de-las-galaxias.jpg'),
            height: 200.0,
            fit: BoxFit.cover,
          ),

          /*const Image(
            image: NetworkImage(
                'https://s.libertaddigital.com/fotos/noticias/1920/1080/fit/tunez-la-guerra-de-las-galaxias.jpg'),
          ),*/
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Tatooine"),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
