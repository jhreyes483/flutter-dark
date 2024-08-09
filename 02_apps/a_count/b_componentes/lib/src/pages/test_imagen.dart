
import 'package:flutter/material.dart';

class TestImagen extends StatefulWidget {
  const TestImagen({super.key});

  @override
  State<TestImagen> createState() => _TestImagenState();
}

class _TestImagenState extends State<TestImagen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text('Test imagen 1'),
      ),
      body: _body()
    );
  }

  Widget _body(){
    return ListView(
      children: [
        SizedBox(height: 30.0),
        _card1()
      ],
    );
  }
  
  _card1(){
    
    final card = Container(
      height          : 350,
      decoration      : BoxDecoration(

        boxShadow: <BoxShadow>[
          BoxShadow(
            color        : Colors.black26,
            blurRadius   : 10.0,
            spreadRadius : 2.0,
            offset       : Offset(2.0, 10.0)
          )
        ]
      ),
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
            padding : EdgeInsets.all(10.0),
            child   : Text('No tengo idea de que poner')
          )
        ],
      ),
      
    );

    return  Container(

      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}