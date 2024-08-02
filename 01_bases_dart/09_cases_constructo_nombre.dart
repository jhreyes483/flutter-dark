import 'dart:convert';

void main() {
  final rawJson = '{"nombre": "Logan", "poder":"Regeneración"}';
  final parseJson = json.decode(rawJson) as Map<String, dynamic>; // Aseguramos el tipo del parseo
  print(parseJson);

  final wolverine = Heroe.fromJson(parseJson);

  print(wolverine.nombre);
  print(wolverine.poder);
}

class Heroe {
  String nombre;
  String poder;

  // Constructor que inicializa los atributos con parámetros nombrados
  Heroe({required this.nombre, required this.poder});

  // Constructor para crear una instancia a partir de un JSON
  factory Heroe.fromJson(Map<String, dynamic> json) {
    return Heroe(
      nombre: json['nombre'] as String,
      poder: json['poder'] as String,
    );
  }
}
