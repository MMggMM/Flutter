void  main (){
  p p0 =  p ( "José" );
  p p1 =  p ( "Joaquim" );
  p p2 =  p ( "Jorge" );
  p p3 =  p ( "Jobson" );
  p p4 =  p ( "Jonathan" );
  p p5 =  p ( "Jackson" );
  p p6 =  p ( "Joana" );
  p p7 =  p ( "Jhonathan" );
  p p8 =  p ( "Jason" );
  p p9 =  p ( "Janette" );

  final list = {p0:"41",p1:"36",p2:"45",p3:"67",p4:"14",p5:"27",p6:"19",p7:"18",p8:"27",p9:"23"};
  for(String id in list.values){
    print("Id: ${id.name}");
  }
}

class p{
  String name;
  p(this.name);

  String toString(){
    return name;
  }
}