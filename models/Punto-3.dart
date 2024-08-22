import 'dart:io';

void main() {
  // Solicitar al usuario el número
  stdout.write('Ingrese un número para calcular su raíz cuadrada: ');
  double? numero = double.tryParse(stdin.readLineSync()!);

  if (numero == null || numero < 0) {
    print('Por favor, ingrese un número válido y no negativo.');
    return;
  }

  // Llamar a la función para calcular la raíz cuadrada
  double result = calcularRaizCuadrada(numero);

  // Mostrar el resultado
  print('La raíz cuadrada aproximada de $numero es: $result');
}

double calcularRaizCuadrada(double numero) {
  double epsilon = 0.00001; // Precisión deseada
  double aprox = numero / 2.0; // Suposición inicial

  while ((aprox * aprox - numero).abs() > epsilon) {
    aprox = (aprox + numero / aprox) / 2.0;
  }

  return aprox;
}