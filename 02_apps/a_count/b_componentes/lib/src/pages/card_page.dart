import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body : ListView(
        //padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        padding: EdgeInsets.all(10.0),
        children:  <Widget> [
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ) 
    );
  }

Widget _cardTipo2() {
  return Card(
    child: Column(
      children: [
        // Asegúrate de proporcionar un tamaño específico para la imagen
        Image.network(
          'https://www.w3schools.com/w3images/lights.jpg',
          fit: BoxFit.cover, // Ajusta el tamaño de la imagen para que se ajuste al contenedor
        ),
        // Asegúrate de envolver el texto en un contenedor adecuado
        Padding(
          padding: const EdgeInsets.all(10.0), // Ajusta el espaciado alrededor del texto
          child: Text('Texto de abajo'),
        ),
      ],
    ),
  );
}


  Widget _cardTipo1() {

    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de la targenta'),
            subtitle: Text('Esta es la descripcion de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            TextButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
            TextButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

}



