package exo_abstraites;

abstract public class Animal {
	
	//Attributs
	private int poids;
	private String couleur;
	
	//Constructeurs
	public Animal(int poids, String couleur) {
		super();
		this.poids = poids;
		this.couleur = couleur;
	}
	
	//Méthodes
	public void manger() {
		System.out.println("Je mange quelque chose");
	}
	
	public void boire() {
		System.out.println("Je bois de l'eau");
	}
	
	abstract void deplacement();
	abstract void crier();

	
	@Override
	public String toString() {
		String maClasse = this.getClass().getSimpleName();
		return "Je suis un objet de la classe "+maClasse+", je suis "+couleur+" et je pèse "+poids+"kg";
	}	
}
