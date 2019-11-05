package scolarite;

public class Professeur extends Personne {

	private static int nbProfesseurs = 0;

	public Professeur() {
		super();
		nbProfesseurs++;
	}

	public Professeur(String nom) {
		super(nom);
		nbProfesseurs++;
	}

	public static int getNbTotal() {
		return nbProfesseurs;
	}
}