import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  const HomeTemp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: <Widget> [
          ListTile(
            title:  Text( 'ListTitle')
          ),
          Divider(),
                    ListTile(
            title:  Text( 'ListTitle')
          ),
          Divider(),
          ListTile(
            title:  Text( 'ListTitle')
          ),
          


        ],
      ),
    );
  }
}