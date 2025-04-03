void main() {
  final Hero wolverine = Hero(name: 'Wolverine', power: 'Regeneration');
  print(wolverine);
}

class Hero {
  String name;
  String power;

  // Este es el metodo mas normal de crear el constructor de un objeto que no hace uso del cuerpo de la funcion pero
  // si es necesario el uso de la palabra reservada "this".
  //
  //           -- Hero({required this.name, required this.power});  --
  //
  // Pero la otra forma que tenemos al momento que queramos modificar los parametros del constructor es usando :
  Hero({required String name, required String power}) :
    name = name,
    power = power;
}
