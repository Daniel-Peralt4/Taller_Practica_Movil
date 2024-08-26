import 'package:test/test.dart';
import '../models/Punto-1.dart';

void main() {
  group('Pruebas de listaOrdenada', () {
    test('Lista ordenada ascendentemente', () {
      List<int> enteros = [1, 2, 3, 4, 5];
      expect(listaOrdenada(enteros), "La lista está ordenada ascendentemente");
    });

    test('Lista ordenada descendentemente', () {
      List<int> enteros = [5, 4, 3, 2, 1];
      expect(listaOrdenada(enteros), "La lista está ordenada descendentemente");
    });

    test('Lista no ordenada', () {
      List<int> enteros = [3, 1, 4, 2, 5];
      expect(listaOrdenada(enteros), "La lista no está ordenada");
    });

    test('Lista vacía', () {
      List<int> enteros = [];
      expect(listaOrdenada(enteros), "La lista está vacia"); // O maneja el caso de lista vacía como desees
    });

    test('Lista con un solo elemento', () {
      List<int> enteros = [42];
      expect(listaOrdenada(enteros), "La lista solo tiene un elemento"); // O el manejo que desees para un solo elemento
    });
  });
}

