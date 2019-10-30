package scolarite;

public class Etudiant extends Personne {
	static String IUT = "IUT de Bordeaux";
	private static int nbTotalEtudiants = 0;

	// Constructeurs
	public Etudiant() {
		super();
		nbTotalEtudiants++;
	}

	public Etudiant(String nom) {
		super(nom);
		nbTotalEtudiants++;
	}

	public static int getNbTotalEtudiants() {
		return nbTotalEtudiants;
	}

}
