package gestionEleves;

public abstract class EleveECTS extends Eleve{
	
	public EleveECTS(String nom) {
		super(nom);
	}

	public abstract int resultat();
}
