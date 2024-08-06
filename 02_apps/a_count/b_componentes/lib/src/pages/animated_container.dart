import 'dart:math';

import 'package:flutter/material.dart';


// atajo snipped stful
class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width   = 50.0;
  double _height  = 50.0;
  Color _color    = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Animated container'),
      ),
      body : Center(
        child : AnimatedContainer(
          duration   : Duration(seconds: 1),
          curve      : Curves.fastOutSlowIn,
          width      : _width,
          height     : _height,
          decoration : BoxDecoration(
            borderRadius : _borderRadius,
            color        : _color
          ), 
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.play_arrow),
        onPressed: _cambiarForma,

      ),


    );
  }
  
  void _cambiarForma() {
    final random =Random();

    _width  += random.nextInt(250).toDouble();
    _height += random.nextInt(250).toDouble();
    _color  = Color.fromRGBO(
      random.nextInt(355),
      random.nextInt(355),
      random.nextInt(355),
      1
    );
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    
    setState(() {
      
    });
  }
}