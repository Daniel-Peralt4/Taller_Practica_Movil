List<int> enteros = [2, 4, 4, 8, 10, 10,11,12,12,13,13,13];

void listaDeRepetidos() {

  print("9) PROGRAMA QUE RECIBE UNA LISTA DE ELEMENTOS Y DEVUELVE UN CONJUNTO DE LOS ELEMENTOS REPETIDOS");
  print("\n");

  Set<int> repetidos = {};
  for (var num in enteros) {
    if (enteros.indexOf(num) != enteros.lastIndexOf(num)) {
      repetidos.add(num);
    }
  }
  print(repetidos);
}
