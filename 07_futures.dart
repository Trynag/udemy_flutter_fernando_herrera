void main() {
  print('Inicio de Script');
  httpGet('https://fernando-herrera.com/cursos')
      .then((value) => print(value))
      .catchError((e) => print(e))
      .whenComplete(() => print('Fin del Script'));
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 5), () {
    throw 'Error intensionado';
  });
}
 
// Future<void> httpGet2() {}
