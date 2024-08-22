void main(){
  List<int> lista1 = [1,3,5,7];
  List<int> lista2 = [2,4,6,8];
  List<int> listaMezclada = [];
  
  for (int i=0; i < lista1.length; i++){
    listaMezclada.add(lista1[i]);
    listaMezclada.add(lista2[i]);
  }

  print("Lista 1: $lista1");
  print("Lista 2: $lista2");
  print("Lista mezclada: $listaMezclada");
}