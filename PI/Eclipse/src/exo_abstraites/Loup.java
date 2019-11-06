package exo_abstraites;

public class Loup extends Canin{

	public Loup(int poids, String couleur) {
		super(poids, couleur);
		// TODO Auto-generated constructor stub
	}

	@Override
	void crier() {
		System.out.println("J'hurle à la lune en faisant ouhouh !");
	}
	
	

}
