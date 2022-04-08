void main(){
  var x = 6;
  var int_i = 3;
  var int_f = 9;

  if(int_f > int_i) {
    for(int i = int_f; i>=int_i; i--)
      print("$x x $i = ${x*i}");
  }else
    print("O valor final precisa ser maior que o inicial");
}