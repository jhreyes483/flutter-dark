void main() {
    final wolverine = Heroe(nombre: 'Logan', poder: 'Regeneracion');

    print(wolverine.poder);
    print(wolverine.nombre);
}

class Heroe {
    String nombre;
    String poder;

    // Constructor que inicializa los atributos con parámetros nombrados
    Heroe({required this.nombre, required this.poder});
}
