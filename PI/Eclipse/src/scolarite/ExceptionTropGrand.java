package scolarite;

public class ExceptionTropGrand extends Exception {
	private int nbErr;
	
	public ExceptionTropGrand(int nbErr) {
		this.nbErr = nbErr;
	}
	
	public String toString() {
		return "L'argument entré est trop grand";
	}
}
