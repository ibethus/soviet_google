package scolarite;

public class MainAppli {

	static void exo60() {
		Etudiant e = new Etudiant("Arsene Lupin");
		Professeur a = new Professeur("Georges Michael");
		System.out.println("L'étudiant e, a pour nom: " + e.getNom());
		System.out.println("Le professeur a, a pour nom: " + a.getNom());
	}

	static void exo62() {
		Etudiant e = new Etudiant("Florian");
		Etudiant f = new Etudiant("Emile");
		Etudiant g = new Etudiant("Ivan");
		Etudiant h = new Etudiant("Xavier");
		Etudiant i = new Etudiant("Julien");
		Etudiant j = new Etudiant("Alicia");
		Etudiant r = new Etudiant("Christophe");
		Etudiant l = new Etudiant("Thomas");
		Etudiant m = new Etudiant("Frédéric");
		Etudiant n = new Etudiant("Corentin");
		Etudiant o = new Etudiant("Etienne");
		Etudiant p = new Etudiant("Gabriel");
		Etudiant q = new Etudiant("Julien");
		Professeur a = new Professeur("Arnaud");
		System.out.format("Les étudiants s'appellent:\n %s\n %s\n %s\n %s\n %s\n %s\n %s\n %s\n %s\n %s\n %s\n %s\n\n",
				e.getNom(), f.getNom(), g.getNom(), h.getNom(), i.getNom(), r.getNom(), l.getNom(), l.getNom(),
				m.getNom(), n.getNom(), o.getNom(), p.getNom());
		System.out.format("Le professeur s'appelle :\n %s\n\n", a.getNom());
		System.out.format("Nombre d'étudiants: %d\n", Etudiant.getNbTotal());
		System.out.format("Nombre de professeurs: %d\n", Professeur.getNbTotal());
		System.out.format("Nombre total de personnes: %d\n", Personne.getNbTotal());
	}

	static void exo68() {
		Etudiant e = new Etudiant("Arsene Lupin");
		Etudiant a = new Etudiant("Arsene Lupin");

		System.out.println("Est-ce que "+e.getNom()+" (e)");
		System.out.println("est identique à "+a.getNom()+" (a) ?");
		System.out.println("It's "+e.equals(a));

	}
	static void exo69() {
		for (int i=0; i<=100; i++)
			new Personne(" Robert Bidochon numero "+i); 
	}
	
	static void exo75() {
		Etudiant a = new Etudiant("Jojo");
		Etudiant c = (Etudiant) a; //Conversion descendante
		Personne b = (Personne) c; //Conversion ascendante
		Personne d = new Personne("Georges");
		((Personne)b).age();
		
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		System.out.println(d);
	}
	
	public static void main(String[] args) {
		exo75();
	}

}
