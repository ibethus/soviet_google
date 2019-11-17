package gestionEleves;

public class MainApp {

	public static void main(String[] args) {
		// Tests élèves
		EleveECTS a = new Eleve1A("Georges");
		a.ajouterNote(12);
		a.ajouterNote(15);
		EleveECTS b = new EleveMaster("Brian");
		b.ajouterNote(15);
		b.ajouterNote(15);
		Eleve c = new Eleve("John");
		c.ajouterNote(20);
		c.ajouterNote(5);
		Eleve d = new Eleve("Louise");
		d.ajouterNote(18);
		d.ajouterNote(19);
		Eleve e = new Eleve("Albert Ier");
		e.ajouterNote(18);
		e.ajouterNote(19);
		// System.out.println(d.getListeNotes());
		// System.out.println(a.compareTo(b));

		// Tests groupe
		GroupeEleves groupe = new GroupeEleves();
		groupe.ajouterEleve(a);
		groupe.ajouterEleve(b);
		groupe.ajouterEleve(c);
		groupe.ajouterEleve(e);
		groupe.ajouterEleve(d);

		// groupe.meilleurEleve();
		// groupe.lister();
		// groupe.trierEleves();

		System.out.println("Crédits de l'élève " + a.getNom() + " en licence: " + a.resultat());
		System.out.println("Crédits de l'élève " + b.getNom() + " en master: " + b.resultat());
	}

}
