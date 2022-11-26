import 'package:flutter/material.dart';

class Item_3 extends StatelessWidget {
  const Item_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3'),
      ),
      body: ListView(
        children: [
          _cardTipo1(),
        ],
      ),
    );
  }
  // le pongo widget delante porq este medotod devuelve uno
  Widget _cardTipo1() {
    return Card(
      child: Column(children: [
        ListTile(
          leading: FlutterLogo(),
          title: Text('titulo'),
          subtitle: Text('subtitule'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: (){}, child: Text('aceptar')),
            TextButton(onPressed: (){}, child: Text('cancelar'))
          ],
        )
      ]),
    );

  }
}