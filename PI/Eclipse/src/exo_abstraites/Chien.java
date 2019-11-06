package exo_abstraites;

public class Chien extends Canin{

	//Constructeur
	public Chien(int poids, String couleur) {
		super(poids, couleur);
		// TODO Auto-generated constructor stub
	}

	@Override
	void crier() {
		System.out.println("J'aboie");
	}

}
