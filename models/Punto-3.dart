import 'dart:io';

void main() {
  // Solicitar al usuario el número
  stdout.write('Ingrese un número para calcular su raíz cuadrada: ');
  double? number = double.tryParse(stdin.readLineSync()!);

  if (number == null || number < 0) {
    print('Por favor, ingrese un número válido y no negativo.');
    return;
  }

  // Llamar a la función para calcular la raíz cuadrada
  double result = calcularRaizCuadrada(number);

  // Mostrar el resultado
  print('La raíz cuadrada aproximada de $number es: $result');
}

double calcularRaizCuadrada(double number) {
  double epsilon = 0.00001; // Precisión deseada
  double guess = number / 2.0; // Suposición inicial

  while ((guess * guess - number).abs() > epsilon) {
    guess = (guess + number / guess) / 2.0;
  }

  return guess;
}