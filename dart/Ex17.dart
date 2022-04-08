void main(){
  Num a1 = Num(10);
  Num a2 = Num(20);
  Num a3 = Num(30);
  Num a4 = Num(40);
  Num a5 = Num(5000);
  Num a6 = Num(60);
  Num a7 = Num(70);
  Num a8 = Num(80);
  Num a9 = Num(90000);
  Num a10 = Num(100);

  var max = 0;
  var ant = 0;

  final lista = [a1,a2,a3,a4,a5,a6,a7,a8,a9,a10];
    for(Num a in lista) {
      if(max < a.name){
        max = a.name;
      }
        ant = a.name;
    }

  print("Maior valor da lista: $max");
}

class Num{
  int name;
  Num(this.name);

  int toInt(){
    return name;
  }
}