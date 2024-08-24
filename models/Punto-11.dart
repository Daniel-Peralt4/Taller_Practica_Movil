List<String> palabras = [
  'agua',
  'fuego',
  'agua',
  'aire',
  'agua',
  'fuego',
  'tierra',
  'aire',
  'agua',
];
void diccionarioPalabrasRepetidas() {

  print("11) PROGRAMA QUE RECIBE UNA LISTA DE PALABRAS Y CONSTRUYE UN DICCIONARIO");
  print("\n");

  print("Lista de palabras: $palabras");
  Map<String, int> diccionario = conteoPalabras(palabras);
  print("Cantidad de cada palabra: $diccionario");
}

Map<String, int> conteoPalabras(List<String> palabras) {
  Map<String, int> diccionario = {};
  for (var palabra in palabras) {
    if (diccionario.containsKey(palabra)) {
      diccionario[palabra] = diccionario[palabra]! + 1;
    } else {
      diccionario[palabra] = 1;
    }
  }
  return diccionario;
}
