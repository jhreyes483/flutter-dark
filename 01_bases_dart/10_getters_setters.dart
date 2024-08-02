void main(){
    final cuadrado = Cuadrado();
    cuadrado.lado = 10;
    print( cuadrado );
}


class Cuadrado {
  double _lado = 0.0; // Inicializa con un valor por defecto
  double _area = 0.0; // Inicializa con un valor por defecto


    set lado( double valor){
        if(valor <= 0){
            throw('El lado no puede ser menor o igual a 0');
        }
    }

    // Getter para el lado
    double get lado => _lado * _lado;

    // Getter para el área
    double get area => _area;

    // Método toString para la representación en cadena
    @override
    toString() => 'Lado: $_lado asea: $_area';

}