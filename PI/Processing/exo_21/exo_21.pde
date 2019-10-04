void setup(){
 String[] texte = loadStrings("../entree.txt"); //Importe un fichier texte
 texte = sort(texte); //Trie les lignes
 saveStrings("fromages.txt", texte); //Exporte le résultat
}
