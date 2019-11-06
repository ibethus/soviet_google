package exo_abstraites;

abstract public class Felin extends Animal {

	//constructeur
	public Felin(int poids, String couleur) {
		super(poids, couleur);
		// TODO Auto-generated constructor stub
	}

	@Override
	void deplacement() {
		System.out.println("Je me déplace toujours seul");
	}
	
	@Override
	public void manger() {
		System.out.println("Je mange de bonnes croquettes");
	}

}
