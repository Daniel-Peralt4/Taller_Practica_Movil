import 'dart:io';

String usuario = "ElGonza";
String contrasena = "PapiLindo";

void main(){
  print("Ingrese el usuario: ");
  String? user = stdin.readLineSync();
  print("Ingrese la contraseña: ");
  String? password = stdin.readLineSync();

  String mensaje =login(user, password);
  print (mensaje);
}

String login(String? user, String? password){
  var mensaje;
  if (user == usuario && password == contrasena){
     mensaje = "Bienvenido $usuario";
  } else {
    mensaje = "Datos incorrectos";
  }

  return mensaje;
}