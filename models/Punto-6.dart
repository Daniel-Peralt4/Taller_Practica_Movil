void listaSinDuplicados() {
  List<int> numeros = [1, 2, 2, 3, 4, 4, 5];
  List<int> resultado = [];

  print("6) PROGRAMA QUE GENERA UNA LISTA DE NUMEROS DUPLICADOS");
  print("\n");

  for (int num in numeros) {
    if (!resultado.contains(num)) {
      resultado.add(num);
    }
  }

  print("Lista original: $numeros");
  print("Lista sin duplicados: $resultado");
}