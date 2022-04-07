void main() {
  int v1 = 5;
  int v2 = 5;
  int v3 = 5;
  
  int r1 = v1+v2;
  int r2 = v1+v3;
  int r3 = v2+v3;
  
  if(r1>v3 && r2>v2 && r3>v1){
    if(v1!=v2 && v1!=v3 && v2!=v3){
      print("Triangulo Escaleno");
    }
    else if(v1==v2 && v1==v3){
      print("Triangulo Equilátero");
    }
    else{
      print("Triangulo Isóceles");
    }
  }
  else{
    print("Não forma um triangulo");
  }
  
}