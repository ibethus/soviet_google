package exercices;

public class Projet {
	Binome b;
	String titre;
	float note;
	
	
	public Projet() {
		super();
	}

	public Projet(Binome b, String titre, float note) {
		super();
		this.b = b;
		this.titre = titre;
		this.note = note;
	}

	@Override
	public String toString() {
		return "Projet [b=" + b + ", titre=" + titre + ", note=" + note + "]";
	}
	
}
