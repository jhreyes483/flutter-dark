import 'dart:convert';

void main() {
    final flipper = Delfin();
    flipper.nadar(); // Esto debería imprimir: Estoy nadando

    final batman = Murcielago();
    batman.caminar(); // Esto debería imprimir: Estoy caminando
    batman.volar();   // Esto debería imprimir: Estoy volando

    final whiskers = Gato();
    whiskers.caminar(); // Esto debería imprimir: Estoy caminando

    final paloma = Paloma();
    paloma.caminar(); // Esto debería imprimir: Estoy caminando
    paloma.volar();   // Esto debería imprimir: Estoy volando

    final pato = Pato();
    pato.caminar();   // Esto debería imprimir: Estoy caminando
    pato.volar();     // Esto debería imprimir: Estoy volando
    pato.nadar();     // Esto debería imprimir: Estoy nadando

    final tiburon = Tiburon();
    tiburon.nadar(); // Esto debería imprimir: Estoy nadando

    final pezVolador = PezVolador();
    pezVolador.nadar(); // Esto debería imprimir: Estoy nadando
    pezVolador.volar(); // Esto debería imprimir: Estoy volando
}

abstract class Animal { }

abstract class Mamifero extends Animal { }
abstract class Ave extends Animal { }
abstract class Pez extends Animal { }

mixin Volador {
    void volar() => print('Estoy volando');
}

mixin Caminante {
    void caminar() => print('Estoy caminando');
}

mixin Nadador {
    void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}
