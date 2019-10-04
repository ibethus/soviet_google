void setup() {
  afficherMots("J'aime les chips");
}

void afficherMots(String phrase) {
  String[] mots = split(phrase, " ");

  for (String mot : mots) {
    println(mot);
  }
}
