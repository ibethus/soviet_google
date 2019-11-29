package flux;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class MainApp {

	static void exo84() {
		// On cherche à réécrire le fonctionnement d'un stream avec une collection classique //
		List<String> liste = Arrays.asList("zero", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit",
				"neuf", "dix");

		List<String> motsQuatresLettres = new ArrayList<>();
		
		for (String mot : liste) {
			if (mot.length() == 4) {
				motsQuatresLettres.add(mot);
			}
		}
		Collections.sort(motsQuatresLettres);
		List<String> motsMajuscule = new ArrayList<>();
		for (String motMaj : motsQuatresLettres) {
			motsMajuscule.add(motMaj.toUpperCase());
		}
		System.out.println(motsMajuscule);
	}

	static void exo85() {
		Pokemon a = new Pokemon("Jeanjean", "Fifi");
		Pokemon b = new Pokemon("Bernard", "Glouglou");
		Pokemon c = new Pokemon("Patrick", "Fifi");
		Pokemon d = new Pokemon("Albert", "Fifi");
		Pokemon e = new Pokemon("René", "Glouglou");
		Pokemon f = new Pokemon("Michel", "Fifi");
		Pokemon g = new Pokemon("Georges", "Fifi");
		
		List<Pokemon> ListePokemon = Arrays.asList(a, b, c, d, e, f, g);
		
		Predicate<Pokemon> genreF = Pokemon -> Pokemon.getGenre().startsWith("F");
		Comparator<Pokemon> comparateurNom = (Pokemon1, Pokemon2) -> Pokemon1.getNom().compareTo(Pokemon2.getNom());
		Consumer<Pokemon> afficher = Pokemon -> System.out.println(Pokemon.getNom()+", "+Pokemon.getGenre());

		
		ListePokemon.stream()
			.filter(genreF)
			.sorted(comparateurNom)
			.forEach(afficher);
	}
	
	
	
	public static void main(String[] args) {
		exo85();
	}

}
