boolean temps = true;

while (temps) {
  int decompte = 60-second();

  //Affichage
  if (decompte != 60) {
    println(decompte);
  } else {
    println("Top");
  }
  while (decompte == 60-second()){}
}
