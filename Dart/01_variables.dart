void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final List<String> sprites = ['ditto/front.png'];

  // El valor de dynamic es null por defecto.
  //
  // El hecho de asignarle un valor no cambia el tipo, el tipo siempre sera dynamic haciendo que pierda siempre
  // cualquier tipo de restriccion por el lenguaje o por nosotros mismos, incluyendo el nullSafety.
  dynamic errorMessage = 'Hola';

  print(""" 
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
}
