void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': ['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'},
  };

  print(pokemon);
  print(pokemon['name']);
  print(pokemon['abilities'][0]);

  // La unica forma de acceder a los valores del Map es por medio de los corhcetes,
  // ya que los metodos se acceden por medio del punto (.)
  print('Front ${pokemon['sprites'][1]}');
  print('Back ${pokemon['sprites'][2]}');
  print('');

  //
  final List<int> numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  print('List original $numbers');
  print('Length: ${numbers.length}');
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');
  print('Reverse: ${numbers.reversed}');

  // Lost iterables se imprimen con ()
  final reversedNumber = numbers.reversed;
  print('Iterable: $reversedNumber');
  print('List: ${reversedNumber.toList()}');

  // La diferencia entre Set y List, es que el Set no permite valores duplicados
  print('Set: ${reversedNumber.toSet()}');
  print('');

  // El metodo where funciona como un filtro
  final numberGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });
  print('Number greater than 5: $numberGreaterThan5');
}
