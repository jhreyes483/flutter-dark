import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  //const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar   : AppBar(
        title  : Text('Avatar - Page'),
        actions: <Widget>[
          Container(
            padding : EdgeInsets.all(5.0),
            child   : CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://drive.google.com/drive/u/6/folders/1ffntX2bMNPgwL3mtuB2zSgyMZFMTPFJz'),
              radius: 25.0,
            ),
          ),
          Container(
            margin  : EdgeInsets.only(right: 10.0),
            child   : CircleAvatar(
              child : Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      
      body: Center(
        child : FadeInImage(
          image          : NetworkImage('https://media.wired.com/photos/5be9d68a5d7c6a7b81d79e25/master/pass/StanLee-610719480.jpg'),
          placeholder    : AssetImage('assets/jar-loading.gif'),
          fadeInDuration : Duration( milliseconds: 200 ),
        ),
      ),

      
    );
  }
}
