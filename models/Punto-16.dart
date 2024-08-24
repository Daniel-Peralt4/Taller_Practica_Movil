void algoritmoCifraDeCesar() {

  print("16) PROGRAMA QUE IMPLEMENTA EL ALGORITMO DE LA CIFRA DE CESAR PARA ENCRIPTAR Y DESENCRIPTAR UN MENSAJE");
  print("\n");

  String cadenaEncriptada = cifraCesar("Cad12*Jena", 4);
  print(cadenaEncriptada);
  String cadenaDesencriptada = cifraCesar("Geh12*Nire", -4);
  print(cadenaDesencriptada);
}

String cifraCesar(String cadena, int espacios) {
  String encriptado = "";
  espacios = espacios % 26;
  for (int i = 0; i < cadena.length; i++) {
    int ascii = cadena.codeUnitAt(i);
    if (ascii >= 65 && ascii <= 90) {
      ascii = (ascii - 65 + espacios) % 26 + 65;
      encriptado += String.fromCharCode(ascii);
    } else if (ascii >= 97 && ascii <= 122) {
      ascii = (ascii - 97 + espacios) % 26 + 97;
      encriptado += String.fromCharCode(ascii);
    } else {
      encriptado += cadena[i];
    }
  }
  return encriptado;
}
