package exercices;

public class Etudiant {
	String nom;
	
	
	@Override
	public String toString() {
		return "Etudiant [nom=" + nom + "]";
	}



	void bonjour(String s) {
		System.out.println("Bonjour " +s);
		System.out.println("Moi, je m'appelle "+nom);
	}
}
