package gestionEleves;

public class Eleve1A extends EleveECTS{

	public Eleve1A(String nom) {
		super(nom);
	}

	@Override
	public int resultat() {
		if (this.getMoyenne() >= 12) {
			return 60;
		} else {
			return 0;
		}
	}

}
