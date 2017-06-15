package rahahleah.rahahleah;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

import com.google.gson.Gson;


public class Main {
	public static void main(String[] args) {
	     URL url;
		try {
		   url = new URL("https://offersvc.expedia.com/offers/v2/getOffers?scenario=deal-finder&page=foo&uid=foo&productType=Hotel");
	       InputStreamReader reader = new InputStreamReader(url.openStream());
	       Gson gs = new Gson();
	       Users Objects= gs.fromJson(reader, Users.class); 
	       System.out.println(Objects.getOfferInfo().toString());
	       System.out.println(Objects.getUserInfo().getUserId().toString());
	//       System.out.println(Objects.userInfo.persona.personaType);
	      System.out.println(Objects.getOffers().getHotel().get(0).getDestination().getCity().toString());
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
