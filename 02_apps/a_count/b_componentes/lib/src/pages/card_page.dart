import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cards')),
        body: ListView(
          //padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
          ],
        ), 
        floatingActionButton: FloatingActionButton( // boton para regresar
        onPressed: () { 
          Navigator.pop(context);
        },
        child: Icon( Icons.add_location)
      ),
        
        
        );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
            FadeInImage(
            image          : NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
            placeholder    : AssetImage('assets/jar-loading.gif'),
            fadeInDuration : Duration( milliseconds: 200 ),
            height         : 300.0,
            fit            : BoxFit.cover,
          ),

          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner')
          )
        ],
      ),
    );

    return Container(
      decoration      : BoxDecoration(
        borderRadius  : BorderRadius.circular(30.0),
        color         : Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color        : Colors.black26,
            blurRadius   : 10.0,
            spreadRadius : 2.0,
            offset       : Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect( // quita todo lo que este porfuera del contenedor
        borderRadius : BorderRadius.circular(30.0),
        child        : card,
      ),
    ); 
  }

  Widget _cardTipo1() {
    
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0) 
      ),
      child: Column(
        children: [
          ListTile(
            leading  : Icon(Icons.photo_album, color: Colors.blue),
            title    : Text('Soy el titulo de la targenta'),
            subtitle : Text('Esta es la descripcion de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child     : Text('Cancelar'),
                onPressed : () {},
              ),
              TextButton(
                child      : Text('Ok'),
                onPressed  : () {},
              ),
            ],
          )
        ],
      ),
    );

  }
}
