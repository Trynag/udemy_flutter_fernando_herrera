void main() {
  print(greetEveryone());
  print(greetPerson(name: 'John'));
  print(greetPerson(name: 'John', message: 'Hello'));
}

String greetEveryone() => 'Hello everyone!';

// Poner los parametros en corchetes [int b = 0] los hace tecnicamente opcionales, ya que por defecto los vuelve nulleable,
// es decir, que no son obligatorios, y por defecto el valor es null a no ser que se le defina un valor por defecto o,
// de lo contrario seria un entero nulleable (int?).
//
// Cuando definimos la variable de esta manera (int a, int b), los parametros son obligatorios y posicionales.
//
//                        --    int addTwoNumbers(int a, [int b = 0]) => a + b; -- 
//
// Encerrar los parametros en llaves hace que se vuelvan opcionales pero no posicionales.
// Si se le agrega la palabra required, hacemos que ya no sean opcionales. 
String greetPerson ({ required String name, String message = 'Hi'}) => '$message, $name';