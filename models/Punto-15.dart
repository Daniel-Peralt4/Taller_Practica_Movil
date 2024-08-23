List<Map<String, dynamic>> estudiantes = [
  {'nombre': 'Juan', 'nota 1': 3.0, 'nota 2': 4.0, 'nota 3': 2.5},
  {'nombre': 'Pedro', 'nota 1': 3.7, 'nota 2': 4.1, 'nota 3': 3.0},
  {'nombre': 'Ana', 'nota 1': 4.2, 'nota 2': 1.6, 'nota 3': 3.8}
];
void main() {
  print(estudiantes);
  calcularPromedio(estudiantes);
}

void calcularPromedio(List<Map<String, dynamic>> estudiantes) {
  for (var estudiante in estudiantes) {
    double promedio =
        (estudiante['nota 1'] + estudiante['nota 2'] + estudiante['nota 3']) /
            3;
    print('El promedio de ${estudiante['nombre']} es $promedio');
  }
}
