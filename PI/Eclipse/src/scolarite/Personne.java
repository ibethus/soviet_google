package scolarite;

public class Personne {
	private String nom;
	static private int nbPersonne = 0;

	public Personne() {
		super();
		nbPersonne++;
	}

	public Personne(String nom) {
		super();
		this.nom = nom;
		nbPersonne++;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public static int getNbPersonne() {
		return nbPersonne;
	}
}
