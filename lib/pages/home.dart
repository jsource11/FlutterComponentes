import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      // body: ListView(children: _crearListaItems()),
      body: ListView(children: _crearListaItemsCorta()),
    );
  }

  List<Widget> _crearListaItems() {
    List<String> items = [
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo',
      'Junio',
      'Julio',
      'Agosto',
      'Septiembre',
      'Octubre',
      'Noviembre',
      'Diciembre'
    ];

    List<Widget> lista = [];
    for (String item in items) {
      final tempItem = ListTile(
        title: Text(item),
      );

      lista.add(tempItem);
      lista.add(Divider());
    }

    return lista;
  }

  List<Widget> _crearListaItemsCorta() {
    List<String> items = [
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo',
      'Junio',
      'Julio',
      'Agosto',
      'Septiembre',
      'Octubre',
      'Noviembre',
      'Diciembre'
    ];

    return items.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e),
            subtitle: const Text('meses'),
            leading: const Icon(Icons.accessibility_new),
            trailing: const Icon(Icons.ac_unit_rounded),
            onTap: () {},
          ),
          const Divider(),
        ],
      );
    }).toList();
  }
}
