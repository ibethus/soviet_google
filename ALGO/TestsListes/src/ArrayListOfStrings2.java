
public class ArrayListOfStrings2 implements ListOfStrings {

	/**
	 * Implémentation par un tableau 
	 * que l'on redimensionnera à chaque ajout si il est plein
	 * (en doublant sa taille)
	 */
	private static final int MINIMAL_SIZE = 4;
	
	private String[] array;
	int nbElements;

	public ArrayListOfStrings2() {
		array = new String[MINIMAL_SIZE];
		nbElements = 0;
	}

	@Override
	public void add(String s) {
		// faut il agrandir ?
		if (nbElements == array.length) {
			String[] tmp = new String[array.length * 2]; // on double

			for(int i=0; i < array.length; i++) {
				tmp[i] = array[i];
			}
			array = tmp;
		}
		//  ajouter 
		array[nbElements] = s;
		nbElements += 1;
	}

	@Override
	public int size() {
		return nbElements;
	}

	@Override
	public void set(int i, String s) {
		array[i] = s;
	}

	@Override
	public String get(int i) {
		return array[i];
	}

}
