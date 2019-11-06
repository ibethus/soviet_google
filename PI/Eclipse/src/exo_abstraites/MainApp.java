package exo_abstraites;

public class MainApp {

	public static void main(String[] args) {
		Loup l = new Loup(20, "Gris bleu");
		System.out.println(l.toString());
		l.boire();
		l.manger();
		l.deplacement();
		l.crier();
		
		
		Chat c = new Chat(6, "Marron");
		System.out.println(c.toString());
		c.boire();
		c.manger();
		c.deplacement();
		c.crier();
		
		
		Lion b = new Lion(50, "Beige");
		System.out.println(b.toString());
		b.boire();
		b.manger();
		b.deplacement();
		b.crier();
		
	}

}
