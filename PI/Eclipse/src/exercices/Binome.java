package exercices;

public class Binome {
	Etudiant etu1;
	Etudiant etu2;
		
	public Binome() {
		super();
	}

	public Binome(Etudiant etu1, Etudiant etu2) {
		super();
		this.etu1 = etu1;
		this.etu2 = etu2;
	}

	@Override
	public String toString() {
		return "Binome [etu1=" + etu1 + ", etu2=" + etu2 + "]";
	}
	
}
