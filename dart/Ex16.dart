void main(){
    Num a1 = Num("10");
    Num a2 = Num("20");
    Num a3 = Num("30");
    Num a4 = Num("40");
    Num a5 = Num("50");
    Num a6 = Num("60");
    Num a7 = Num("70");
    Num a8 = Num("80");
    Num a9 = Num("90");
    Num a10 = Num("100");

    final lista = [a10,a9,a8,a7,a6,a5,a4,a3,a2,a1];

    print("List: $lista");
    for(Num a in lista){
      print("Número> ${a.name}");
    }
}

class Num{
  String name;

  Num(this.name);
  
  String toString() {
    return name;
  }
}