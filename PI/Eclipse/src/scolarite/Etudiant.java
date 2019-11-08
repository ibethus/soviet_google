package scolarite;

public class Etudiant extends Personne {
	static String IUT = "IUT de Bordeaux";
	private static int nbTotalEtudiants = 0;

	// Constructeurs
	public Etudiant() {
		super();
		nbTotalEtudiants++;
	}
	public void bonjour(String s) {
		System.out.println("Bonjour, moi je m'appelle"+ getNom());
	}
	
	@Override
	public String toString() {
		return "[Etudiant]]"+" Je m'appelle "+super.toString()+" et je suis un étudiant très studieux";
	}


	public Etudiant(String nom) {
		super(nom);
		nbTotalEtudiants++;
	}

	public static int getNbTotal() {
		return nbTotalEtudiants;
	}
	public void age() {
		System.out.println("[Etudiant]: Un étudiant est jeune, en général");
	}

}
