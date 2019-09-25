/*
Conteneur: Objet qui contient des objets : éléments.
 
 Listes (séquences): 
 On peut:
 -y ajouter des éléments
 -parcourir, càd faire quelque chose avec chaque élément
 -enlever
 -vider
 -tester si un ou des éléments sont présents
 -calculer le nombre d'éléments
 
 Il y a différentes sortes de listes, nous allons utiliser ArrayList. C'est une liste, dans laquelle on peut aller chercher un élément grace à sa position dans la liste.
 */
 
//Declaration de la liste
ArrayList<pastille>listePastille = new ArrayList<pastille>();

//Variables globales
final color NOIR = color(0);
color couleur = color(NOIR);

void setup() {
  noStroke();
  fullScreen();
  frameRate(120);
}

void draw() {
  background(255);
  for (pastille p : listePastille) {
    p.dessiner();
  }
}

void mouseDragged() {
  pastille nouvellePastille = new pastille(mouseX, mouseY,  NOIR);
  listePastille.add(nouvellePastille); //On ajoute la pastille dans la liste
}
