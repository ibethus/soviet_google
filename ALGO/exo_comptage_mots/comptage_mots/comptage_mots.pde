void setup() {
  noLoop();
  traiterLigne("");
  traiterLigne("!!!!!!");
  traiterLigne("un deux trois");
  traiterLigne("        un deux trois");
  traiterLigne("    un      deux       trois");
  traiterLigne("C'est bientôt l'été !");
}

void traiterLigne(String ligne) {
  println("Traitement de la ligne: ", ligne);
  boolean dansMot = false;
  String mot = "";
  for (int i = 0; i < ligne.length(); i++) {
    char c = ligne.charAt(i);
    if (Character.isLetter(c)) {
      if (dansMot) {
        mot += c;
      } else {
        mot = "" + c;
        dansMot = true;
      }
    } else {
      // c n'est pas une lettre
      if (dansMot) {
        traiter(mot);
        dansMot = false;
      }
    }
  }
  if (dansMot){
   traiter(mot); 
  }
}

void traiter(String mot) {
  println("-", mot);
}
