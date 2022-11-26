import 'package:flutter/material.dart';

class Item_1 extends StatelessWidget {
  const Item_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alerta'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            _mostrarAlerta(context);
          },
          child: const Text('Mostrar'),
        ),
      )
    );
  }
  
  _mostrarAlerta(BuildContext context) {
      showDialog(
        context: context,
        builder: (context){
            // forma en que flutter detecta si es ios o android y muestra el tipo de alerta
          //if(Platform)
          return AlertDialog(
            title: Text('titulo del alert'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('contenido 1'),
                Text('Contenido 2')
              ],
            ),
          );
        }
    );
  }
}