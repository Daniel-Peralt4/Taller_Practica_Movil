List<Map<String, dynamic>> productos = [
  {
    'nombre': 'papel higienico',
    'precio': 2000,
    'promocion': true,
    'descuento': 0.9
  },
  {
    'nombre': 'detergente',
    'precio': 2800,
    'promocion': false,
    'descuento': 0.85
  },
  {'nombre': 'leche', 'precio': 3400, 'promocion': true, 'descuento': null},
  {'nombre': 'cereal', 'precio': 1500, 'promocion': false, 'descuento': 0.8},
  {'nombre': 'arroz', 'precio': 3600, 'promocion': false, 'descuento': null},
];

List<Map<String, dynamic>> carrito = [];
dynamic precioTotal = 0;
void main() {
  agregarAlCarrito('papel higienico', 2);
  agregarAlCarrito('detergente', 3);
  agregarAlCarrito('arroz', 4);
  print(carrito);
  print("Total a pagar: ${precioTotal}");
}

void agregarAlCarrito(String nombre, int cantidad) {
  for (int i = 0; i < productos.length; i++) {
    if (nombre == productos[i]['nombre']) {
      Map<String, dynamic> producto = {};
      producto['nombre'] = nombre;
      producto['cantidad'] = cantidad;

      if (productos[i]['promocion']) {
        producto['cantidad'] = producto['cantidad'] * 2;
      }

      if (productos[i]['descuento'] != null) {
        producto['precio'] = productos[i]['precio'] *
            productos[i]['descuento'] *
            producto['cantidad'];
      } else {
        producto['precio'] = productos[i]['precio'] * producto['cantidad'];
      }
      carrito.add(producto);
      precioTotal += producto['precio'];
    }
  }
}
