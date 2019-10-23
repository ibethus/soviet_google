package exercices;

public class Anneau {
	
	private static boolean existe = false;

	//Constructeur inutilisable en dehors de la classe
	private Anneau() {
		System.out.println("Vous avez créé l'Unique");
	}
	
	public static Anneau createAnneau() {
		if (existe == false) {
			existe = true;
			return new Anneau();
		}
		System.out.println("Il ne peut y avoir qu'un seul anneau !");
		return null;
	}
}