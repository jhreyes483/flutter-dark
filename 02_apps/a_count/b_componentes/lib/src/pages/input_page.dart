import 'package:flutter/material.dart';

// st
class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre    = '';
  String _email     = '';
  String _password  = '';
  String _fecha     = '';
  String? _opcionSeleccionada = 'Volar';
  List   _poderes   = ['Volar','Rayos X','Super Aliento','Super Fuerza'];
  TextEditingController _inputFieldDateController = new TextEditingController();

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
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearPersona(),
          Divider(),
          _crearDropdown()

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
      title    : Text('Nombre es: $_nombre'),
      subtitle : Text('Email: $_email'),
      trailing: Text('$_opcionSeleccionada'),
    );
  }
  
  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border   : OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter    : Text('Letras ${_nombre.length} '),
        hintText   : 'Email',
        labelText  : 'Email',
        helperText : 'Solo es el email',
        suffixIcon : Icon(Icons.alternate_email),
        icon       : Icon(Icons.email)
      ),
      onChanged: (valor){
        _email = valor;
        setState(() {});
      },

    );
  }
  
  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border   : OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter    : Text('Letras ${_nombre.length} '),
        hintText   : 'Password',
        labelText  : 'Password',
        helperText : 'Solo es el nombre',
        suffixIcon : Icon(Icons.lock),
        icon       : Icon(Icons.password)
      ),
      onChanged: (valor){
        _password = valor;
        setState(() {});
      },
    );
  }
  
  Widget _crearFecha(BuildContext context) {
    return TextField(

      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border   : OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter    : Text('Letras ${_nombre.length}'),
        hintText   : 'Fecha de nacimiento',
        labelText  : 'Fecha de nacimiento',
        suffixIcon : Icon( Icons.perm_contact_calendar ),
        icon       : Icon( Icons.calendar_today )
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode()); // desactiva el autofocus
        _selectDate( context );
      },
    );
    
  }
  
  void _selectDate(BuildContext context) async {
    // Mostrar el selector de fecha
    DateTime? picked = await showDatePicker(
      context: context, 
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2024), 
      lastDate: new DateTime(2025),
      locale: Locale('es','ES')
    );

    if(picked != null){
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    return _poderes.map((poder) {
      return DropdownMenuItem<String>(
        child: Text(poder),
        value: poder,
      );
    }).toList();
  }
  
  Widget _crearDropdown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),   
        Expanded(
          child: DropdownButton( // select
            value: _opcionSeleccionada,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() {
                _opcionSeleccionada = opt;
              });
            },
          ),
        )

      ],
    );
    
  }
}