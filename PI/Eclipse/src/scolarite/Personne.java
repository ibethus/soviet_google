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
	
	@Override
	public String toString() {
		return nom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public static int getNbTotal() {
		return nbPersonne;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Personne other = (Personne) obj;
		if (nom == null) {
			if (other.nom != null)
				return false;
		} else if (!nom.equals(other.nom))
			return false;
		return true;
	}
	@Override
	public void finalize() {
		System.out.println("Bye bye de la part de"+getNom());
	}
	
}
