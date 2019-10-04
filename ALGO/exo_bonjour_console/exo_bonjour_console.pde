String texte = "On va manger des chips !";
String tiret = "-";
//String[] tiret = new String[texte.length()];

void setup() {
  dessinerBoite();
  dessinerTexte();
  dessinerBoite();
}
void dessinerBoite() {
  print("* ");
  int l2 = texte.length();
  for (int i=0; i<l2; i++) {
    print(tiret+" ");
  }
  println("*");
}

void dessinerTexte() {
  print("| ");
  int l = texte.length();
  for (int i=0; i<l; i++) {
    print(texte.charAt(i)+" ");
  }
  println("|");
}
