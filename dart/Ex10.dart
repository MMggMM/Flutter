void main() {
  var vi = 9;
  var acel = 1;
  var t = 7;
  
  var v = vi + acel*t;
  var km = v*3.6;
  
  if(km <= 40){
    print("Muito lento");
  }else if(km <= 60){
    print("Velocidade permitida");
  }else if(km <= 80){
    print("Velocidade de cruzeiro");
  }else if(km <= 120){
    print("Veículo rápido");
  }else{
    print("Veículo muito rápido");
  }
}