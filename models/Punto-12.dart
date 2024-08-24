Map<String, double> productos = {
  "Papas": 100.5,
  "Cebolla": 98,
  "Tomate": 99.9,
  "Pimiento": 100,
  "Ajo": 120.2,
  "Zanahoria": 106.4
};
void descuentoAProductos() {

  print("12) PROGRAMA QUE APLICA DESCUENTOS A ALGUNOS PRODUCTOS DE UN DICCIONARIO");
  print("\n");

  print(productos);
  descuento(productos);
  print(productos);
}

void descuento(Map<String, double> productos) {
  for (var producto in productos.keys) {
    if (productos[producto]! > 100) {
      productos[producto] = productos[producto]! * 0.9;
    }
  }
}
