void main() {
  var peso = 30;
  var altura = 1.65;
  var pesoRecom = peso/(altura*altura);
  
  if(pesoRecom >= 18.5 && pesoRecom <= 24.9){
    print("Está no peso ideal");
  }
  else{
    print("Não está no peso ideal");
  }
}