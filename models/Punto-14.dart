void main() {
  Map<int, String> caracteres = conteoCaracteres('cadena de caracteres');
  print(caracteres);
}

Map<int, String> conteoCaracteres(String cadena) {
  Map<int, String> resultado = {};
  for (int i = 0; i < cadena.length; i++) {
    if (cadena[i] == ' ') {
      continue;
    }
    if (!resultado.containsKey(i)) {
      resultado[i] = cadena[i];
    }
  }
  return resultado;
}
