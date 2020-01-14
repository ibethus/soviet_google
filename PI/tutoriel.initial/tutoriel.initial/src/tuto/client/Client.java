package tuto.client;

public class Client{

	public static void main( String[] args ){
		ServiceDate sd = new ServiceDateService().getServiceDatePort();
		String reponse = sd.getLongDate("14/02/2014");
		System.out.println("Resultat: " + reponse);
	}

}