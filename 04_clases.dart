void main() {
  final Hero wolverine = Hero(
    name: 'Wolverine',
    power: 'Regeneration',
    isAlive: true,
  );
  print(wolverine);
  print(wolverine.name);
  print('');

  final Map<String, dynamic> rawJSON = {
    'name': 'John',
    'age': 30,
    'isAlive': true,
  };

  final Hero heroFromMap = Hero.fromMap(rawJSON);
  print(heroFromMap);
  print('');

  final Square square = Square(side: 10);
  print('Área: ${square.calculateArea()}');
  print('Área: ${square.area}');
  print('');
  square.side = 20;
  print('Área: ${square.area}');
}

class Hero {
  String name;
  String power;
  bool isAlive;

  // Este es el metodo mas normal de crear el constructor de un objeto que no hace uso del cuerpo de la funcion pero
  // si es necesario el uso de la palabra reservada "this".
  //
  //           -- Hero({required this.name, required this.power});  --
  //
  // Pero la otra forma que tenemos al momento que queramos modificar los parametros del constructor es usando :
  Hero({required String name, required String power, required bool isAlive})
    : name = name,
      power = power,
      isAlive = isAlive;

  @override
  String toString() {
    return '$name - $power, ${isAlive ? 'is alive' : 'is not alive'}';
  }

  Hero.fromMap(Map<String, dynamic> map)
    : name = map['name'] ?? 'No name found',
      power = map['power'] ?? 'No power found',
      isAlive = map['isAlive'] ?? false;
}

// Manejo de geters y setters
class Square {
  double _side;

  Square({required double side}) : assert(side >= 0, 'Side cannot be negative'), _side = side;

  double get area => _side * _side;

  void set side(double value) {
    if (value < 0) throw Exception('Side cannot be negative');
    print('Setting new value $value');
    _side = value;
  }

  double calculateArea() => _side * _side;
}
