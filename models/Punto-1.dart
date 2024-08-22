List<int> enteros = [5, 4, 3, 2, 1];

void listaOrdenada(List<int> lista) {
  bool ascendente = true;
  bool descendente = true;
  for (int i = 0; i <= enteros.length - 2; i++) {
    if (enteros[i] < enteros[i + 1]) {
      descendente = false;
    }
    if (enteros[i] > enteros[i + 1]) {
      ascendente = false;
    }
  }
  if (ascendente) {
    print("La lista está ordenada ascendentemente");
  } else if (descendente) {
    print("La lista está ordenada descendentemente");
  } else {
    print("La lista no está ordenada");
  }
}
