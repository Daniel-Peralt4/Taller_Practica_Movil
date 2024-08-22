import 'dart:io';

void main(){
  print("Ingrese un texto para saber si es palindromo");
  String? texto = stdin.readLineSync()!.toLowerCase().replaceAll(" ", "");

  if (texto == texto.split('').reversed.join('')){
    print("La cadena es un palindromo");
  } else {
    print("La cadena no es un palindromo");
  }
}