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
		return  "Je m'appelle "+super.toString()+" et je suis ";
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

	/*
	 * @Override public boolean equals(Object o) { //comparaison sur le nom Etudiant
	 * autre = (Etudiant) o; return this.getNom().equals(autre.getNom()); }
	 * 
	 * @Override public int hashCode() { if (getNom()!=null) return
	 * getNom().charAt(0); // getNom().hashCode() conviendrait aussi return 0; }
	 */
	
	
}
