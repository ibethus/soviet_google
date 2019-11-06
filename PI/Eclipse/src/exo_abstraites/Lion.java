package exo_abstraites;

public class Lion extends Felin{

	//Constructeur
	public Lion(int poids, String couleur) {
		super(poids, couleur);
		// TODO Auto-generated constructor stub
	}

	@Override
	void crier() {
		System.out.println("Je rugis !");
	}

}
