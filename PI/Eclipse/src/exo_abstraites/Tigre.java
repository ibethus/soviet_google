package exo_abstraites;

public class Tigre extends Felin{

	public Tigre(int poids, String couleur) {
		super(poids, couleur);
		// TODO Auto-generated constructor stub
	}

	@Override
	void crier() {
		System.out.println("Je feule");
	}

}
