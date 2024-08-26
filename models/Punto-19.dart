List<int> mergeSort(List<int> lista) {
  if (lista.length <= 1) {
    return lista;
  }

  int medio = lista.length ~/ 2;
  List<int> izquierda = lista.sublist(0, medio);
  List<int> derecha = lista.sublist(medio);

  izquierda = mergeSort(izquierda);
  derecha = mergeSort(derecha);

  return merge(izquierda, derecha);
}

List<int> merge(List<int> izquierda, List<int> derecha) {
  List<int> listaOrdenada = [];
  int i = 0, j = 0;

  while (i < izquierda.length && j < derecha.length) {
    if (izquierda[i] <= derecha[j]) {
      listaOrdenada.add(izquierda[i]);
      i++;
    } else {
      listaOrdenada.add(derecha[j]);
      j++;
    }
  }

  // Añadir los elementos restantes, si los hay
  while (i < izquierda.length) {
    listaOrdenada.add(izquierda[i]);
    i++;
  }

  while (j < derecha.length) {
    listaOrdenada.add(derecha[j]);
    j++;
  }

  return listaOrdenada;
}

void ordenamientoMergeSort() {
  List<int> lista = [38, 27, 43, 3, 9, 82, 10];

  print("Lista original: $lista");

  List<int> listaOrdenada = mergeSort(lista);

  print("Lista ordenada: $listaOrdenada");
}
