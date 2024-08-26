import 'dart:io';

class ColaAtencion {
  List<String> _cola = [];

  void agregarCliente(String cliente) {
    _cola.add(cliente);
    print("Cliente $cliente agregado a la cola.");
  }

  void atenderCliente() {
    if (_cola.isEmpty) {
      print("No hay clientes en la cola para atender.");
    } else {
      String clienteAtendido = _cola.removeAt(0);
      print("Atendiendo al cliente: $clienteAtendido");
    }
  }

  void mostrarClientesEnCola() {
    if (_cola.isEmpty) {
      print("No hay clientes en la cola.");
    } else {
      print("Clientes en la cola:");
      for (int i = 0; i < _cola.length; i++) {
        print("${i + 1}. ${_cola[i]}");
      }
    }
  }
}

void manejoCola() {
  ColaAtencion colaAtencion = ColaAtencion();

  while (true) {
    print("\nOpciones:");
    print("1. Agregar cliente a la cola");
    print("2. Atender cliente");
    print("3. Mostrar clientes en la cola");
    print("4. Salir");

    stdout.write("Seleccione una opción: ");
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        stdout.write("Ingrese el nombre del cliente: ");
        String? cliente = stdin.readLineSync();
        if (cliente != null && cliente.isNotEmpty) {
          colaAtencion.agregarCliente(cliente);
        } else {
          print("Nombre de cliente no válido.");
        }
        break;
      case '2':
        colaAtencion.atenderCliente();
        break;
      case '3':
        colaAtencion.mostrarClientesEnCola();
        break;
      case '4':
        print("Saliendo del programa...");
        return;
      default:
        print("Opción no válida, por favor intente de nuevo.");
    }
  }
}
