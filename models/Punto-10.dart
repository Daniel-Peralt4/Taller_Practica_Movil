import 'dart:io';

List<List<int>> encontrarSubconjuntos(List<int> conjunto) {
  List<List<int>> subconjuntos = [[]];

  for (int num in conjunto) {
    List<List<int>> nuevosSubconjuntos = [];
    for (List<int> subconjunto in subconjuntos) {
      List<int> nuevoSubconjunto = List.from(subconjunto);
      nuevoSubconjunto.add(num);
      nuevosSubconjuntos.add(nuevoSubconjunto);
    }
    subconjuntos.addAll(nuevosSubconjuntos);
  }

  return subconjuntos;
}

void conjuntosSubconjuntos() {
  stdout.write("Introduce los números del conjunto separados por espacio: ");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("No se ha ingresado ningún número.");
    return;
  }

  List<int> conjunto = input.split(' ').map(int.parse).toList();
  List<List<int>> subconjuntos = encontrarSubconjuntos(conjunto);

  print("\nSubconjuntos posibles:");
  for (List<int> subconjunto in subconjuntos) {
    print(subconjunto);
  }
}
