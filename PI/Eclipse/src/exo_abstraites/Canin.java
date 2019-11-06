package exo_abstraites;

abstract public class Canin extends Animal{

	//Constructeur
	public Canin(int poids, String couleur) {
		super(poids, couleur);
		// TODO Auto-generated constructor stub
	}

	@Override
	void deplacement() {
		System.out.println("Je me déplace en meute");
	}
	
	@Override
	public void manger() {
		System.out.println("Je mange de la viande !");
	}
}
