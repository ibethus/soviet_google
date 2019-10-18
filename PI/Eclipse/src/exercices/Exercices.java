package exercices;

import java.util.Scanner;
import java.util.ArrayList;

public class Exercices {
	static void exo25() {
		// Affichage
		System.out.println("Quel est votre nom ?");

		// Saisie de l'utilisateur
		Scanner in = new Scanner(System.in);
		String nom = in.nextLine(); // Enregistre la saisie dans le string "nom"

		/*
		 * Affichage System.out.println("Bonjour " + nom);
		 */

		// Affichage version 2
		System.out.format("Bonjour %s", nom);

		in.close(); // On libère l'espace mémoire occupé par le "in"
	}

	static void exo26() {
		int carre;
		int cube;
		System.out.format("+----+----+----+\n");
		for (int i = 1; i <= 5; i++) {
			carre = i;
			cube = i * i * i;
			System.out.format("|%3d |%3d |%3d |\n", i, carre, cube);
		}
		System.out.format("+----+----+----+");
	}

	/*static void exo34() {
		Etudiant a = new Etudiant();
		a.nom = "Adele";
		Etudiant b = new Etudiant();
		b.nom = "Basile";
		Etudiant c = new Etudiant();
		c.nom = "Cloclo";
		Etudiant d = new Etudiant();
		d.nom = "Dagobert";
		Etudiant e = new Etudiant();
		d.nom = "Eglantine";

		a.bonjour(b.nom);
		b.bonjour(c.nom);
		c.bonjour(a.nom);
		e.bonjour(d.nom);

	}*/

	static void exo35() {
		// Les etudiants
		Etudiant a = new Etudiant();
		a.nom = "Georges";
		Etudiant b = new Etudiant();
		b.nom = "Albert";
		// Le binome
		Binome bi = new Binome();
		bi.etu1 = a;
		bi.etu2 = b;
		// Le projet
		Projet p = new Projet();
		p.titre = "Le super projet !";
		p.note = 18;
		p.b = bi;
		System.out.println("Note : " + p.note + "/20");

	}

	public static float mystereExo35(Projet p) {
		System.out.println("Titre du projet : " + p.titre);
		System.out.println("Premier membre : " + p.b.etu1.nom);
		System.out.println("Second membre : " + p.b.etu2.nom);
		return p.note;

	}

	static void exo36() {
		Etudiant b = new Etudiant();
		b.nom = "Bob";
		System.out.println(b.toString());
	}

	static void exo37() {
		Etudiant a = new Etudiant("Georges");
		Etudiant b = new Etudiant("Albert");
		Binome bi = new Binome(a, b);
		Projet p = new Projet(bi, "Le super projet !", 18);
		System.out.println(p);
	}

	/*
	 * static void exo46() { int i = Integer.parseInt("127"); System.out.println(i);
	 * Integer z = i + 1; System.out.println(z); int j = z.intValue();
	 * System.out.println(j); Integer k = 127 + 73; System.out.println(k); int l =
	 * Integer.parseInt("127+73"); System.out.println(l); }
	 */

	static void exoEnum() {
		for (Jour j : Jour.values()) {
			System.out.print("Le " + j);
			// appel implicite de j.toString()
			if (j.compareTo(Jour.SAMEDI) < 0) { // avant samedi ?
				System.out.println(" je travaille");
			} else {
				System.out.println(" je dors");
			}
		}
	}
	
	
	static void exo47(){
		Etudiant bob = new Etudiant("Bob");
		Etudiant clara = new Etudiant("clara");
		Etudiant georges = new Etudiant("georges");
		Etudiant alfred = new Etudiant("alfred");
		Etudiant gertrude = new Etudiant("gertrude");
		ArrayList<Etudiant> etudiants = new ArrayList<>();
		etudiants.add(bob);
		etudiants.add(clara);
		etudiants.add(georges);
		etudiants.add(alfred);
		etudiants.add(gertrude);
		
		for (Etudiant e: etudiants) {
			System.out.println(e);
		}
	}
	
	static void exo49() {
		Etudiant a = new Etudiant("Georges");
		Etudiant b = new Etudiant("Albert");
		ArrayList<Etudiant> etudiants = new ArrayList<>();
		etudiants.add(a);
		etudiants.add(b);
		
		for (Etudiant e: etudiants) {
			System.out.println(e);
		}
	}
	
	static void exo52() {
		Etudiant a = new Etudiant("Georges");

		a.afficherIUT(); //PAS BIEN !!
		Etudiant.afficherIUT(); //BIEN
		
	}

	public static void main(String[] args) {
		exo52();
	}

}
