import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  //const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child : ElevatedButton(
          child            : Text('Mostrar Alerta'),
          style            : ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Color de fondo del botón
            foregroundColor: Colors
                .white, // Color del texto del botón// Color del texto del botón
            shape: StadiumBorder(), // Forma del botón
          ),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          // boton para regresar
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.add_location)),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title           : Text('Titulo'),
            content         : Column(
              mainAxisSize  : MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la caja de la alerta'),
                FlutterLogo(size: 100.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child      : Text('Cancelar'),
                      onPressed  : ()=> Navigator.of(context).pop(),
                    ),
                    TextButton(
                      child: Text('Ok'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
