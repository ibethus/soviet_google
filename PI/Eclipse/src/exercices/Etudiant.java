package exercices;

public class Etudiant {
	private String nom;
	static String IUT = "IUT de Bordeaux";
	static int nbTotalEtudiants = 0; // Attribut static doit être initialisé lorsqu'on le déclare

	// Constructeurs
	public Etudiant() {
		super();
		nbTotalEtudiants++;
	}

	public Etudiant(String nom) {
		super();
		this.setNom(nom);
		nbTotalEtudiants++;
	}

	// Constructeur de copie
	public Etudiant(Etudiant y) {
		this.setNom(y.getNom());
	}

	/*@Override
	public String toString() {
		return ("Moi, je m'appelle " + getNom());
	}

	public static void afficherIUT() {
		System.out.println("IUT: " + IUT);
	}*/

	@Override
	public void finalize() {
		nbTotalEtudiants--;
	}
	//Accesseurs
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
	
}
