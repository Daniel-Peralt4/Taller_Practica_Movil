import 'models/Punto-1.dart';
import 'models/Punto-2.dart';
import 'models/Punto-3.dart';
import 'models/Punto-4.dart';
import 'models/Punto-5.dart';
import 'models/Punto-6.dart';
import 'models/Punto-7.dart';
import 'models/Punto-8.dart';
import 'models/Punto-9.dart';
import 'models/Punto-11.dart';
import 'models/Punto-12.dart';
import 'models/Punto-13.dart';
import 'models/Punto-14.dart';
import 'models/Punto-15.dart';
import 'models/Punto-16.dart';
import 'models/Punto-17.dart';
import 'models/Punto-18.dart';
import 'dart:io';


void main() {
  String? OP='NO';

  while(OP == 'NO'){

    print("M E N U");
    print("1. Punto 1");
    print("2. Punto 2");
    print("3. Punto 3");
    print("4. Punto 4");
    print("5. Punto 5");
    print("6. Punto 6");
    print("7. Punto 7");
    print("8. Punto 8");
    print("9. Punto 9");
    print("10. Punto 10");
    print("11. Punto 11");
    print("12. Punto 12");
    print("13. Punto 13");
    print("14. Punto 14");
    print("15. Punto 15");
    print("16. Punto 16");
    print("17. Punto 17");
    print("18. Punto 18");
    print("19. Punto 19");
    print("20. Punto 20");
    
  
    print("Qué programa desea ejecutar?");
    String? option = stdin.readLineSync();
    int opcion = int.parse(option!);

    switch(opcion){
      case 1: listaOrdenada();
              print("\n");
      case 2: login();
              print("\n");
      case 3: raiz();
              print("\n");
      case 4: piedraPapelOTijera();
              print("\n");
      case 5: palindromo();
              print("\n");
      case 6: listaSinDuplicados();
              print("\n");
      case 7: mezclarLista();
              print("\n");
      case 8: permutacionesDeElementos();
              print("\n");
      case 9: listaDeRepetidos();
              print("\n");
      case 10: print("\n");
               break;
      case 11: diccionarioPalabrasRepetidas();
              print("\n");
      case 12: descuentoAProductos();
              print("\n");
      case 13: combinacionDeDiccionarios();
              print("\n");
      case 14: conversionCadenaADiccionario();
              print("\n");
      case 15: promedioConListasDeDiccionarios();
              print("\n");
      case 16: algoritmoCifraDeCesar();
              print("\n");
      case 17: simulacionDeTienda();
              print("\n"); 
      case 18: BusquedaBinariaLista();
             print("\n");
               break;
      case 19: print("\n");
               break;
      case 20: print("\n");
               break;
      default: print("Opción inválida");
    }

    print("Desea salir? (SI, NO)");
    OP = stdin.readLineSync();
    OP = OP!.toUpperCase();
  }
}