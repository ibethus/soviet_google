package scolarite;

public class ExceptionNegatif extends Exception{
	private int nbErr;
	
	public ExceptionNegatif(int nbErr) {
		this.nbErr = nbErr;
	}
	
	public String toString() {	
		return "L'argument doit être positif";
	}
}
