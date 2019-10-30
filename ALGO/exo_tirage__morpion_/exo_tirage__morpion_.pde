/*Algo à l'écrit:
le tirage est un tableau d'entiers.
on doit utiliser taille(tirage)
tirage[i] représente le contenu de la case i

ALGO 1:
-Est-ce que le tableau contient des résultats valides (entre 0 et C) ? valide = booléen;
action: vérifier booléen

retourner booléen:
{booléen valide = vrai
pour chaque case du tableau
si <1 ou >6
  {alors valide = faux;
   sortir du programme
  }
  retourner valide.
}

ALGO 2:
-Combien de fois le 6 est tiré ?
tableau[tirage];
java:
{
int n = comptage(int[]tirage, 6);
println("Il y a " n " fois 6");
}
int comptage(int[], int n){
  pour chaque case i du tableau
  si i = 6 alors int comptage augmente de 1
  return comptage;
}

ALGO 3:
-Combien de tirages avant de trouver 6 ?

tableau[tirage];

java:
{int n = tirages(int[]tirage, 6);
si n différent de -1:
println("On a du tirer " n " fois pour trouver 6");
si n égal à -1:
println("Pas de tirage de 6");
}
int tirages(int[], int n){
  pour chaque case i du tableau{
  tant que i != n alors i++ et int compteur ++;
}
  si compteur est égal à longueur.tirage, alors compteur = -1; 
  return int compteur;
}

ALGO 4:
-Quel est le chiffre tiré le plus souvent ? 

tableau[tirage];

java:
{int n = tirages(int[]tirage);
 pour chaque case i du tableau:
   valeur de la case = int chiffre;
   int compteurMax;
   int valeur;
     pour chaque case j du tableau:
       {si chiffre = j alors compteur ++;}
   si compteur est supérieur à compteurMax alors compteurMax = compteur et valeur = chiffre;
}
println("On a tiré" compteurMax "fois le chiffre " valeur);

ALGO 5:
-Combien de cases identiques avant et après le joueur ?
On cherche la taille des groupes de cases contant la position indiquée
données: tableau (t) et position (indice p)
résultat: le nombre d'éléments du groupe contenant la position

pseudo-code:
{
  résultat: nombre d'éléments identiques après la position p.
  nb = 0;
  i = p;
  se balader vers la droite ou la gauche (+1 ou -1) pour i < taille(tableau);
  arrêter si t[i] != t[p];
  compteur: nb++;
}

java:
{tableau t
position p
nb = 0;
i = p;
while(i < t.size() && t[i]==t[p]){ //droite
  nb++;
  i++;
}
i=p-1
while(i>0 && t[i]==t[p]){ //gauche
  nb++;
  i--;
}
}

morpion: 
-> taille de l'alignement autour de (l, c) dans une direction d
->déterminer si il existe un alignement d'au moins 5 cases autour de (l, c):
  pour chacune des 4 directions d, s'il y a un alignement dans la direction d alors gagner = vrai;
  
  position l,c
  nb = 0
  li = l
  ci = c
  while(position.valide(li, ci) && t[li][ci]==t[l][c]){
    nb++
    li += dl[d]
    ci += dc[d]
  }
  li = l - dl[d]
  ci ) c - dc[d]
  while(..){
    nb++
    li -= dl[d]
    ci -= dc[d]
  }
*/
