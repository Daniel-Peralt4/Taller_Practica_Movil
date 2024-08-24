Map<String, int> dic1 = {
  'manzana': 7,
  'pera': 5,
  'limon': 2,
  'papaya': 8,
  'banano': 10
};
Map<String, int> dic2 = {
  'zanahoria': 12,
  'plátano': 9,
  'papaya': 4,
  'tomate': 6,
  'manzana': 15,
  'banano': 3
};
Map<String, int> resultado = {};
void combinacionDeDiccionarios() {

  print("13) PROGRAMA QUE COMBINA DOS DICCIONARIOS");
  print("\n");

  print(dic1);
  print(dic2);
  combinacionDics(dic1, dic2);
  print(resultado);
}

void combinacionDics(Map<String, int> dic1, Map<String, int> dic2) {
  for (var clave in dic1.keys) {
    if (dic2.containsKey(clave)) {
      resultado[clave] = dic1[clave]! + dic2[clave]!;
    } else {
      resultado[clave] = dic1[clave]!;
    }
    for (var clave in dic2.keys) {
      if (!resultado.containsKey(clave)) {
        resultado[clave] = dic2[clave]!;
      }
    }
  }
  print(resultado);
}
