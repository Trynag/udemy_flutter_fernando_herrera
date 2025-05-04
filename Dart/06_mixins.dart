abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando');
}

mixin Caminante implements Comer{
  void caminar() => print('Estoy caminando');
  void comer() => print('Estoy comiendo');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
}

abstract interface class Comer {
  void comer();
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Caminante, Nadador, Volador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final Delfin flipper = Delfin();
  flipper.nadar();

  final Murcielago batman = Murcielago();
  batman.caminar();
  batman.volar();
  batman.comer();
}

// Como tal, hay varias anotaciones dependiendo el uso del mixin y sus mezclan con on, implementes y demas, todo
// va a depender de lo que se necesite pero en resumen el funcionamiento seria: 
//
// 1. on: 
// Se usan para poder acceder a los metodos y variables de la clase padre, esto quiere decir, que vamos, de cierta
// forma a filtrar las clases que sean subclases o instancias de la clase padre. 
//
// 2. implements: 
// Esto lo hacemos en los mixin para el uso de interfaces, recordando que las interfaces no se pueden aplicar un extends
// entonces, la segregacion de interfaces, hace que el codigo sea mas modular, y se especifique el contrato sin tener
// que recargarla la implementacion que es algo que podriamos hacer en la clase o el mixin, pero lo mejor seria realizar
// la implentación en el mixin para mezclarlo a la clase deseada
//
// 3. class mixin: 
// En lo personal lo veo como una buena iniciativa, debido a que permite la flexibilidad de implementacion como clase o 
// mixin asi como lo aclara el nombre, las ventajas que trae al respecto es que el mixin permite la implementacion de 
// interfaces, tambien, la clase donde se deasea aplicar ahorase puede extender y heredar la implementacion, ej:
//
//    // Definición de una interfaz.
//     abstract class Vuela {
//       void volar();
//    
//     // Un mixin class puede implementar la interfaz 'Vuela'.
//     mixin class Avion implements Vuela {
//       @override
//       void volar() => print("Avión volando!");
//    
//     // La clase 'Caza' extiende de 'Avion' y hereda la implementación de 'volar'.
//     class Caza extends Avio//    
//     void main() {
//       Caza().volar(); // Imprime: Avión volando!
//     }
//
