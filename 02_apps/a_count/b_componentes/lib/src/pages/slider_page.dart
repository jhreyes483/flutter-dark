import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// stfull
class SliderPage extends StatefulWidget {
  const SliderPage({super.key});



  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
    double _valorSlider = 100.0;
    bool?  _bloquearCheckbox = false;

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
            //_crearImagen(),
            _crearCheckBox(),
            _crearSwitch()
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
      onChanged  : (_bloquearCheckbox ?? false) ? null : ( valor ){
        _valorSlider =valor;

        setState(() {});
      }
    );
  }

  Widget _crearSwitch(){
      return SwitchListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheckbox ?? false,
        onChanged: (valor){
          setState(() {
            _bloquearCheckbox = valor;
          });
        }
      );
  }

  Widget _crearCheckBox() {
    /*
    return Checkbox(
      value: _bloquearCheckbox, 
        onChanged: (valor){
          setState(() {
            _bloquearCheckbox = valor;
          });
        }
      );
      */
      return CheckboxListTile(
        title: Text('Bloquear slider'),
         value: _bloquearCheckbox, 
        onChanged: (valor){
          setState(() {
            _bloquearCheckbox = valor;
          });
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

