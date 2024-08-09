import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  
  final estiloTexto = TextStyle(fontSize: 25);
  int   conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks: 2 ', style: estiloTexto),
            Text(  '$conteo', style: estiloTexto),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // como cambiar la ubicacion del boton
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          conteo = conteo + 1;
        },
      ),
    );
  }
}
