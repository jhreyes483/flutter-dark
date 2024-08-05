import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


class _MenuProvider {
  List <dynamic> opciones = [];

  _MenuProvider(){
    //cargarData();
  }
  
  Future<List<dynamic>> cargarData() async {

    final resp    = await rootBundle.loadString('data/test_json.json');
    final dataMap = json.decode(resp) as Map<String, dynamic>;
    opciones      = dataMap['rutas']; 

    return opciones;
  } 
}

final menuProvider = new _MenuProvider();