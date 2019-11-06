package exo_abstraites;

public class Chat extends Felin{

	public Chat(int poids, String couleur) {
		super(poids, couleur);
		// TODO Auto-generated constructor stub
	}

	@Override
	void crier() {
		System.out.println("Je miaule");
	}

}
