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
          _cardTipo1()
        ],
      ) 
    );
  }
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
