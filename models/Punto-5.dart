import 'dart:io';

void palindromo() {

  print("5) PROGRAMA QUE DETERMINA SI UNA PALABRA ES UN PALINDROMO");
  print("\n");

  print("Ingrese un texto para saber si es palindromo");
  String? texto = stdin.readLineSync()!.toLowerCase();

  if (texto == texto.split('').reversed.join('')) {
    print("La cadena es un palindromo");
  } else {
    print("La cadena no es un palindromo");
  }
}
