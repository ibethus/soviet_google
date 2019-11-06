int[] t = {7, 4, 2, 8, 5, 1, 6};

// trier

for (int i = 0; i < t.length; i++){
  //trouver la position p du minimum 
  int p = i;
  for(int j = i+1; j < t.length; j++){
    if (t[j] < t[p]){
    p = j;
  }
}
//echanger t[i] et t[p]
int tmp = t[i];
t[i] = t[p];
t[p] = tmp;
}

//Afficher 
println(t);
