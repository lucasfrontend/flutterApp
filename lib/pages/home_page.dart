import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> componentes = [
      {
        'title': 'Paso 1',
        'icon': const Icon(Icons.abc_rounded),
        'ruta': 'item_1'
      },
      {
        'title': 'Paso 2',
        'icon': const Icon(Icons.abc_rounded),
        'ruta': 'item_2'
      },
      {
        'title': 'Paso 3',
        'icon': const Icon(Icons.abc_rounded),
        'ruta': 'item_3'
      },
      {
        'title': 'Paso 4',
        'icon': const Icon(Icons.abc_rounded),
        'ruta': 'item_4'
      },
      {
        'title': 'signu up',
        'icon': const Icon(Icons.abc_rounded),
        'ruta': 'sign_up'
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),

      ),
      body: ListView.builder(
        //tamanio de la lista
        itemCount: componentes.length,
        //context hace referencia al padre, int itera la lista
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              onTap: (){
                //navegacion entre pantallas
                Navigator.pushNamed(context, componentes[index]['ruta']);
              },
              title: Text(componentes[index]['title']),
              leading: componentes[index]['icon'],
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
            ),
          );
        }

      )
    );
  }
}