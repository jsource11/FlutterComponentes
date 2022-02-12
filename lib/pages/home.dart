import 'package:componentes_app/providers/menu_providers.dart';
import 'package:componentes_app/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      //body: ListView(children: _crearListaItems()),
      //body: ListView(children: _lista()),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(children: _listaItems(snapshot.data ?? []));
        });
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final wt = ListTile(
          title: Text(element['texto']),
          leading: getIcon(element['icon']),
          /*const Icon(
            Icons.account_circle,
            color: Colors.blue,
          ),*/
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {});

      opciones.add(wt);
      opciones.add(Divider());
    });

    return opciones;
  }

  /*List<Widget> _crearListaItems() {
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
  }*/

  /*List<Widget> _crearListaItemsCorta() {
    //menuProvider.cargarData()
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
  }*/
}
