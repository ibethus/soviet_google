package scolarite;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.ListIterator;

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
	
	static void exo77(){
		Etudiant a = new Etudiant("Florian");
		Etudiant b = new Etudiant("Emile");
		
		//Ajout des étudiants à la liste doublement chaînée
		LinkedList<Personne> llEtu = new LinkedList<>();
		llEtu.add(a);
		llEtu.add(b);		
		System.out.println(llEtu);
		
		//Ajout d'un étudiant c entre a et b
		Etudiant c = new Etudiant("Ivan");
		ListIterator<Personne> liEtu = llEtu.listIterator();
		liEtu.next();
		liEtu.add(c);
		System.out.println(llEtu);
		
		//Ajout d'un étudiant d entre a et c
		Etudiant d = new Etudiant("Xavier");
		liEtu.previous();
		liEtu.add(d);
		System.out.println(llEtu);
		
		//Supression de l'étudiant c
		liEtu.next();
		liEtu.remove();
		System.out.println(llEtu);

	}
	
	static void exo80() {
		Etudiant a = new Etudiant("Florian");
		Etudiant b = new Etudiant("Emile");
		Etudiant c = new Etudiant("Florian");
		HashSet hs = new HashSet();
		hs.add(a);
		hs.add(b);
		hs.add(c);
		System.out.println(hs);
	}
	
	static void exo81() {
		//On ajoute les étudiants au Hash
		Etudiant a = new Etudiant("Florian");
		Etudiant b = new Etudiant("Emile");
		Etudiant c = new Etudiant("Ivan");
		HashSet hs = new HashSet();
		hs.add(a);
		hs.add(b);
		hs.add(c);
		
		//On leur ajoute la possibilité d'avoir des commentaires
		HashMap<Etudiant, String> remarque = new HashMap<Etudiant, String>();
		remarque.put(a, "un étudiant hors du commun.");
		remarque.put(b, "un étudiant souvent en retard.");
		remarque.put(c, "un étudiant très ponctuel.");
		
		//Affichage des remarques
		for (Etudiant etu : remarque.keySet()){
		System.out.println(etu+remarque.get(etu));
		}
	}
	
	public static void main(String[] args) {
		exo81();
	}

}
