package gestionEleves;

public class MainApp {

	public static void main(String[] args) {
		//Tests élèves
		Eleve a = new Eleve("Georges");
		a.ajouterNote(10);
		a.ajouterNote(15);
		Eleve b = new Eleve("Brian");
		b.ajouterNote(15);
		b.ajouterNote(15);
		Eleve c = new Eleve("John");
		b.ajouterNote(20);
		b.ajouterNote(5);
		Eleve d = new Eleve("Louise");
		b.ajouterNote(18);
		b.ajouterNote(19);
		//System.out.println(a.getListeNotes());
		//System.out.println(a.compareTo(b));
		
		//Tests groupe
		GroupeEleves groupe = new GroupeEleves();
		groupe.ajouterEleve(a);
		groupe.ajouterEleve(b);
		groupe.ajouterEleve(c);
		groupe.ajouterEleve(d);
		groupe.meilleurEleve();
	}

}
