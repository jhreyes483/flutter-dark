import 'package:b_componentes/src/pages/alert_page.dart';
import 'package:b_componentes/src/providers/menu_provider.dart';
import 'package:b_componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(), // carga la data del provider
      initialData: [], // valor inicial de la respuesta
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        // ejecución que realiza al terminar la petición
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data == null) {
          return Center(child: Text('No data available'));
        } else {
          return ListView(
            children: _litaItems(snapshot.data!, context),
          );
        }
      },
    );
  }

  List<Widget> _litaItems(List<dynamic> data,BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp =  ListTile(
        title    : Text( opt['texto'] ),
        leading  : getIcon( opt['icon']  ),
        trailing : Icon( Icons.keyboard_arrow_right,  color: Colors.blue),
        onTap    :() {
          Navigator.pushNamed(context, opt['ruta'] );
          /*
          final route = MaterialPageRoute(
            builder  : (context)  => AlertPage()
          );

          Navigator.push(context, route);
          */
        },
      );

      opciones..add( widgetTemp )
              ..add( Divider());
    });

    return opciones;
    /*
    return [
      ListTile(title: Text('Hola Mundo')),
      Divider(),
      ListTile(title: Text('Hola Mundo')),
      Divider(),
      ListTile(title: Text('Hola Mundo'))
    ];
    */
  }
}
