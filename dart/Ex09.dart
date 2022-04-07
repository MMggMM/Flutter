void main() {
  var peso = 60;
  var altura = 1.65;
  var sexo = "M";
  var pesoRecom = peso/(altura*altura);
  
  if(sexo == "f" || sexo == "F"){
    if(pesoRecom < 19){
      print("Abaixo do peso ideal");
    }else if(pesoRecom < 24){
      print("No peso ideal");
    }else{
      print("Acima do peso ideal");
    }
  }else{
    if(pesoRecom < 20){
      print("Abaixo do peso ideal");
    }else if(pesoRecom < 25){
      print("No peso ideal");
    }else{
      print("Acima do peso ideal");
    }
  }
}