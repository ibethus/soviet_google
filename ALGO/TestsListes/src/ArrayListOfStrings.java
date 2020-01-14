
public class ArrayListOfStrings implements ListOfStrings {

	/**
	 * Implémentation par un tableau qui l'on redimensionnera à chaque ajout.
	 */
	private String[] array;

	public ArrayListOfStrings() {
		array = new String[0];
	}

	@Override
	public void add(String s) {
		String[] tmp = new String[array.length + 1];

		for(int i=0; i < array.length; i++) {
			tmp[i] = array[i];
		}
		tmp[array.length] = s; // le dernier
		array = tmp;
	}

	@Override
	public int size() {
		return array.length;
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
