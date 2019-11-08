package exo_oiseaux;

import java.util.ArrayList;

public class mainApp {

	public static void main(String[] args) {
		ArrayList<Oiseau> oiseaux = new ArrayList<Oiseau>();
		
		oiseaux.add(new Pie());
		oiseaux.add(new Pie());
		oiseaux.add(new Pie());
		oiseaux.add(new Merle());
		oiseaux.add(new Merle());
				
		for ( Oiseau o: oiseaux) {
			o.decrire();
		}
		
	}

}
