import 'package:flutter/material.dart';

// stfull
class SliderPage extends StatefulWidget {
  const SliderPage({super.key});



  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
    double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            //_crearImagen()
          ],
        ),
      )
    );
  }
  
  Widget _crearSlider() {
    
    return Slider(
      activeColor: Colors.indigoAccent,
      //divisions  :  20,
      value      : _valorSlider,
      min        : 10.0,
      max        : 400.0, 
      onChanged  : ( valor ){
        _valorSlider =valor;

        setState(() {});
      }
    );
  }
  /*
  Widget _crearImagen() {
  return Image.network(
    'http://pngimg.com/uploads/batman/batman_PNG111.png',
    width: _valorSlider,
    fit: BoxFit.contain,
  );
  }
  */
}