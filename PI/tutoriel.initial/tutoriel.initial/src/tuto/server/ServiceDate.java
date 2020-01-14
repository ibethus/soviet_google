package tuto.server;

import javax.jws.WebMethod;
import javax.jws.WebService;

import java.util.Date;
import java.text.*;

import javax.xml.ws.Endpoint;

@WebService
public class ServiceDate {
	private SimpleDateFormat longDate = new SimpleDateFormat("EEEE dd MMMM yyyy");
	private SimpleDateFormat shortDate = new SimpleDateFormat("dd/MM/yyyy");
	
	public ServiceDate(){
	    System.out.println("Creation du service date");
	}

	// retourne la date d'aujourd'hui au format long
	public String today(){
		return longDate.format(new Date());
	}
	// entrée: une chaine de caractères au format "dd/MM/yyyy"
	// sortie: 
	@WebMethod
	public String getLongDate( String date ){
		String rep="";
		try{rep = longDate.format( shortDate.parse( date ));}
		catch (ParseException e){return e.toString(); }
		return rep;
	}	
	 public static void main(String[] args) {
		Endpoint.publish("http://localhost:4040/date", new ServiceDate());
		System.out.println("Serveur ServiceDate pret");
		while(true);
		
	}
}

