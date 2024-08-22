import 'dart:math';
import 'dart:io';

void main() {
  String? nuevamente;

  do {
    Random random = Random();
    List<String> opciones = ["piedra", "papel", "tijera"];
    String eleccionPrograma = opciones[random.nextInt(opciones.length)];

    print("Elige una opción: (piedra, papel, tijera)");
    String? eleccionUsuario = stdin.readLineSync();

    if (!["piedra", "papel", "tijera"]
        .contains(eleccionUsuario!.toLowerCase())) {
      print("Entrada inválida.");
      return;
    }

    print("La computadora eligió: $eleccionPrograma");

    String ganador = elGanador(eleccionUsuario.toLowerCase(), eleccionPrograma);
    print(ganador);

    print("Jugamos otra vez? (Si, No)");
    nuevamente = stdin.readLineSync();
  } while (nuevamente!.toLowerCase() == "si");

  print("Bye bye...");
}

String elGanador(String eleccionUsuario, String eleccionPrograma) {
  String mensaje;
  if (eleccionUsuario == eleccionPrograma) {
    mensaje = "Empate!";
  } else if ((eleccionUsuario == "piedra" && eleccionPrograma == "tijera") ||
      (eleccionUsuario == "papel" && eleccionPrograma == "piedra") ||
      (eleccionUsuario == "tijera" && eleccionPrograma == "papel")) {
    mensaje = "Felicidades, haz ganado!!!!";
  } else {
    mensaje = "Lo siento, haz pedido :'(";
  }
  return mensaje;
}
