import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = TextStyle(fontSize: 25);
  final _separacionBotones = 6.0;
  int _conteo = 10;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Statefull 2'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de click: ', style: _estiloTexto),
              Text('$_conteo', style: _estiloTexto),
            ],
          ),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // como cambiar la ubicacion del boton
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
        Expanded(child:  SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _quitar),
        SizedBox(width:  _separacionBotones ),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _setDefault),
      ]);
  }

  void _agregar(){
    _conteo++;
    setState(() {});// redibuja en tiempo real
  }

  void _quitar(){
    setState(() => _conteo--  );
  }

  void _setDefault(){
    setState(() {
      _conteo = 10;
    });
  }
}
