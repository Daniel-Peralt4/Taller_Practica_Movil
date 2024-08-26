import 'dart:io';

String usuario = "aeduardogonzalez";
String contrasena = "unicesar2023";

void login(){

  print("2) PROGRAMA QUE IMPLEMENTA UN SISTEMA DE AUTENTICACIÓN SENCILLO");
  print("\n");

  print("Ingrese el usuario: ");
  String? user = stdin.readLineSync();
  print("Ingrese la contraseña: ");
  String? password = stdin.readLineSync();

  String mensaje =autenticacion(user, password);
  print (mensaje);
}

String autenticacion(String? user, String? password){
  var mensaje;
  if (user == usuario && password == contrasena){
     mensaje = "Bienvenido $usuario";
  } else {
    mensaje = "Datos incorrectos";
  }

  return mensaje;
}