void setup(){
  println("1/3 ="+inverse(3));
  println("1/0 = "+inverse(0));
}

float inverse(float x){
  assert(x!=0);
  return (1/x);
}
