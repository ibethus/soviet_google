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
		System.out.format("Nombre d'étudiants: %d\n", Etudiant.getNbTotalEtudiants());
		System.out.format("Nombre de professeurs: %d\n", Professeur.getnbProfesseurs());
		System.out.format("Nombre total de personnes: %d\n", Personne.getNbPersonne());
	}

	public static void main(String[] args) {
		exo62();
	}

}
