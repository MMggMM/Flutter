void main(){
  int times = 20;

  var brg = 1;
  var fib = 1;
  var ant = 1;

  for(int i=0;i<3;i++)
    print("1");

  for(int i=3;i<times;i++) {
    var sum = brg + fib + ant;
    brg = fib;
    fib = ant;
    ant = sum;

    print("$sum");
  }
}