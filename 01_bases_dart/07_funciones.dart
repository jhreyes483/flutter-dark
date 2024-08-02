void main() {
    String mensajeA = saludarA('Hola', 'Javier');
    print('A $mensajeA');

    String mensajeB = saludarB(texto: 'Hola', nombre: 'Javier');
    print('B $mensajeB');

    String mensajeC = saludarC(texto: 'Hola', nombre: 'Javier');
    print('C $mensajeC');

}

void saludar() {
    print('Hola mundo');
}

String saludarA(String texto, String nombre) {
    return '$texto $nombre';
}


String saludarB({required String texto, required String nombre}) {
    return '$texto $nombre';
}


String saludarC({required String texto,required  String nombre}) => '$texto $nombre';
