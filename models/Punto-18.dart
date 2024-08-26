import 'dart:io';

int binarySearch(List<int> lista, int valor) {
  if (lista.isEmpty) {
    print("La lista está vacía.");
    return -1;
  }

  int izquierda = 0;
  int derecha = lista.length - 1;

  while (izquierda <= derecha) {
    int medio = izquierda + (derecha - izquierda) ~/ 2;

    if (lista[medio] == valor) {
      return medio; // Elemento encontrado
    } else if (lista[medio] < valor) {
      izquierda = medio + 1;
    } else {
      derecha = medio - 1;
    }
  }

  print("El elemento $valor no se encuentra en la lista.");
  return -1; // Elemento no encontrado
}

void BusquedaBinariaLista() {
  List<int> lista = [1, 3, 5, 7, 9, 11, 13, 15];
  
  stdout.write("Introduce el valor a buscar: ");
  int? valor = int.tryParse(stdin.readLineSync() ?? '');

  if (valor == null) {
    print("Por favor, introduce un número válido.");
    return;
  }

  int resultado = binarySearch(lista, valor);

  if (resultado != -1) {
    print("El valor $valor se encuentra en la posición $resultado de la lista.");
  }
}
