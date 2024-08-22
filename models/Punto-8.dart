void main() {
  List<int> elementos = [1, 2, 3];
  List<List<int>> permutaciones = [];

  generarPermutaciones(elementos, 0, elementos.length - 1, permutaciones);

  for (var perm in permutaciones) {
    print(perm);
  }
}

void generarPermutaciones(List<int> lista, int izquierda, int derecha, List<List<int>> resultado) {
  if (izquierda == derecha) {
    resultado.add(List<int>.from(lista));
  } else {
    for (int i = izquierda; i <= derecha; i++) {
      intercambiar(lista, izquierda, i);
      generarPermutaciones(lista, izquierda + 1, derecha, resultado);
      intercambiar(lista, izquierda, i);
    }
  }
}

void intercambiar(List<int> lista, int i, int j) {
  int temp = lista[i];
  lista[i] = lista[j];
  lista[j] = temp;
}
