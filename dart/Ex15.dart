void main(){
  var n = 5;

  var sum = 0;
  var imp = 1;
  var init = 2;
  var t = 0;

  if(n>0 && n<100){
    for(int i=0;i<n;i++){
      imp=imp + 2;
      sum = imp + init;

      t = init + t;
      init = sum;
    }
    print("$t");
  }else
    print("Informe um valor entre 0 e 100");

}