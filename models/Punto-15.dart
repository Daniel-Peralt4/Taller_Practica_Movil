List<Map<String, dynamic>> estudiantes = [
  {
    'nombre': 'Juan',
    'primer corte': 3.0,
    'segundo corte': 4.0,
    'tercer corte': 2.5
  },
  {
    'nombre': 'Pedro',
    'primer corte': 3.7,
    'segundo corte': 4.1,
    'tercer corte': 3.0
  },
  {
    'nombre': 'Ana',
    'primer corte': 4.2,
    'segundo corte': 1.6,
    'tercer corte': 3.8
  }
];
void main() {
  print(estudiantes);
  calcularPromedio(estudiantes);
}

void calcularPromedio(List<Map<String, dynamic>> estudiantes) {
  for (var estudiante in estudiantes) {
    double promedio = (estudiante['primer corte'] +
            estudiante['segundo corte'] +
            estudiante['tercer corte']) /
        3;
    print('El promedio de ${estudiante['nombre']} es $promedio');
  }
}
