import 'package:flutter/material.dart';

// st
class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre ="";

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearImput(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }
  
  Widget _crearImput() {

    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border   : OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter    : Text('Letras ${_nombre.length} '),
        hintText   : 'Nombre de usuario',
        labelText  : 'Nombre',
        helperText : 'Solo es el nombre',
        suffixIcon : Icon(Icons.accessibility),
        icon       : Icon(Icons.account_circle)
      ),
      onChanged: (valor){
        _nombre = valor;
        setState(() {});
      },

    );
  }
  
  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
    );
  }
}