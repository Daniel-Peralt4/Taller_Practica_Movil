import 'dart:io';

String usuario = "Daniel";
String password = "123.Dp";

void login() {
  print("Ingrese su usuario");
  String? user = stdin.readLineSync() ?? '';
  print("Ingrese su contraseña");
  String? pass = stdin.readLineSync() ?? '';
  if (user == usuario && pass == password) {
    print("Bienvenido $user");
  } else {
    print("Usuario o contraseña incorrectos");
  }
}
