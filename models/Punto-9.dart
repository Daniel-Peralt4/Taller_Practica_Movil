List<int> enteros = [2, 4, 4, 8, 10, 10];
void main() {
  Set<int> repetidos = {};
  for (var num in enteros) {
    if (enteros.indexOf(num) != enteros.lastIndexOf(num)) {
      repetidos.add(num);
    }
  }
  print(repetidos);
}
