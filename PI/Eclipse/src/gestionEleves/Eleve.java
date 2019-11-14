package gestionEleves;
import java.util.ArrayList;

public class Eleve implements Comparable<Eleve>{
	
	private String nom;
	private ArrayList<Integer> listeNotes = new ArrayList();
	private double moyenne = 0;
	
	public Eleve(String nom) {
		super();
		this.nom = nom;
	}

	public double getMoyenne() {
		return moyenne;
	}

	public String getNom() {
		return nom;
	}

	public ArrayList<Integer> getListeNotes() {
		return listeNotes;
	}
	
	public void ajouterNote(int note) {
		//Normalisation
		if (note < 0) note = 0;
		if (note > 20) note = 20;
		//ajout
		listeNotes.add(note);
		//recalcul moyenne
		//méthode classique
		double sommeNotes = 0;
		for (int n : listeNotes)
			sommeNotes += n;
		moyenne = sommeNotes / listeNotes.size();
		
		//Méthode rusée
		//int k = listeNotes.size();
		//moyenne = ((moyenne *(k-1))+note)/k;
			
	}

	@Override
	public String toString() {
		return nom+": "+moyenne;
	}

	@Override
	public int compareTo(Eleve autreEleve) {
		if (moyenne < autreEleve.moyenne) return -1;
		if (moyenne == autreEleve.moyenne) return 0;
		if (moyenne > autreEleve.moyenne) return 1;
		return 0;
	}
	
	
}
