String listaOrdenada(List<int> enteros) {
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
    return "La lista está ordenada ascendentemente";
  } else if (descendente) {
    return "La lista está ordenada descendentemente";
  } else {
    return "La lista no está ordenada";
  }
}
