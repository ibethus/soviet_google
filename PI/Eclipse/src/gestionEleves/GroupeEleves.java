package gestionEleves;
import java.util.ArrayList;
import java.util.Collections;

public class GroupeEleves {
	
	ArrayList<Eleve> listeEleves = new ArrayList();
	
	public int nombre() {
		return listeEleves.size();
	}
	
	public ArrayList<Eleve> getListe(){
		return listeEleves;
	}
	
	public void ajouterEleve(Eleve eleve) {
		listeEleves.add(eleve);
	}
	
	public Eleve chercher(String nom) {
		for (Eleve e : listeEleves) {
			if (e.getNom().equals(nom)) {
				return e;
			}
		}
		return null;
	}

	public void lister() {
		System.out.println("Liste des élèves:");
		for(int i = 0; i <= listeEleves.size()-1; i++){
		      System.out.println(listeEleves.get(i));
		   }
	}
	
	public void meilleurEleve() {
		System.out.println(Collections.max(listeEleves));
	}
	public void trierEleves() {
		//System.out.println(Collections.sort(listeEleves));
	}
	
}
