void main(){
  var mlt = 5;
  var value = 0;

  final lista = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];

  for(int i=0; i<lista.length; i++) {
     lista[i] = lista[i]*mlt;
  }

  print("Lista multiplicada por $mlt : $lista");
}