//Declaration de la liste
ArrayList<Resultats>listeResultats = new ArrayList<Resultats>();


//Declaration constantes globales
final color VERT = color(0, 255, 0);
final color ROUGE = color(255, 0, 0);
final color BLEU = color(0, 0, 255);
final color BLANC = color(255, 255, 255);
final color VIOLET = color(255, 0, 255);

//Declaration variables globales
float pourcentage = 0;
int hauteurFenetre;
int largeurFenetre;

//Declaration resultats
Resultats Berou = new Resultats("Berou", 19803, VERT);
Resultats Chichi = new Resultats("Chichi", 38966, VIOLET);
Resultats Zargouzi = new Resultats("Zargouzi", 98763, ROUGE);
Resultats Heulande = new Resultats("Heulande", 56078, BLEU);
Resultats ElMacrone = new Resultats("ElMacrone", 40000, BLANC);

void setup() {
  size(900, 500);
  listeResultats.add(Berou);
  listeResultats.add(Zargouzi);
  listeResultats.add(Heulande);
  listeResultats.add(ElMacrone);
  listeResultats.add(Chichi);
}

void draw() {
  hauteurFenetre = height-200;
  largeurFenetre = width-200;
  println(largeurFenetre);
  background(0);
  dessinerBarre();
  stroke(255);
  fill(0, 0, 0, 0);
  rect(100, 100, largeurFenetre, hauteurFenetre);
}

void dessinerBarre() {
  //Calculer le max de voix
  int maxVoix = 0;
  for (Resultats r : listeResultats) {
    if (r.nbVoix > maxVoix) {
      maxVoix = r.nbVoix;
    }
  }

  //Calculer voix totales
  int nb = listeResultats.size();
  int voixTotales = 0;
  for (int i = 0; i < nb; i++) {
    Resultats r = listeResultats.get(i);
    voixTotales += r.nbVoix;
  }
  //Calculer pourcentages
  //Afficher texte 
  for (int i = 0; i < nb; i++) {
    Resultats r = listeResultats.get(i);
    fill(255);
    textSize(20);
    
    //calcul du pourcentage
    pourcentage = 100.0*r.nbVoix/voixTotales;
    float x = map(i, 0, nb, 100, largeurFenetre+100); //On re-map le nombre de candidats en fonction de la largeur de la fenêtre.
    float y = map(r.nbVoix, 0, maxVoix, 0, hauteurFenetre);
    fill(r.couleur);
    float largeurColonne = largeurFenetre/listeResultats.size();
    noStroke();
    rect(x, hauteurFenetre+100, largeurColonne, -y); //Tracer les colonnes
    fill(255);
    textAlign(CENTER);
    text(String.format("%10s\n %7.2f %%", r.nom, pourcentage), x+(largeurColonne/2), hauteurFenetre+150); //Affichage des noms et des pourcentages
  }
}
