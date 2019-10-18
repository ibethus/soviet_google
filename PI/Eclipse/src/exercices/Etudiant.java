package exercices;

public class Etudiant {
	String nom;
	static String IUT = "IUT de Bordeaux";
	
	public Etudiant() {
		super();
	}



	public Etudiant(String nom) {
		super();
		this.nom = nom;
	}


	 @Override
		public String toString(){
		return("Moi, je m'appelle "+nom);
	}
	 
	public static void afficherIUT() {
		System.out.println("IUT: "+IUT);
	}
}
