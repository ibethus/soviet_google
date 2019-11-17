package gestionEleves;

public class EleveMaster extends EleveECTS {

	public EleveMaster(String nom) {
		super(nom);
		// TODO Auto-generated constructor stub
	}

	@Override
	public int resultat() {
		int total = 0;
		for (int n : getListeNotes()) {
			if (n >= 10) {
				total += 6;
			}
			if (n >= 8 && n < 10) {
				total += 3;
			}
		}
		return total;
	}

}
