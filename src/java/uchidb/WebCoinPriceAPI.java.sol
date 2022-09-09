package uchidb;

import java.net.*;
import java.io.*;  

/**
 * @author skr
 */
public class WebCoinPriceAPI {

	private URL url;
	private final String PREFIX = "https://www.coingecko.com/en/coins/";

	public WebCoinPriceAPI(String coin_name){
		//TODO 1. Write a constructor that translates the provided coin name
		//into a URL that can be used to fetch the price from www.coingecko.com
		//As example look at https://www.coingecko.com/en/coins/bitcoin the format
		//of these urls is https://www.coingecko.com/en/coins/<coin_name>

		try  
    	{ 
			url = new URL(PREFIX + coin_name);
		}
		catch(Exception e)  
	    {  
	      e.printStackTrace();  
	    } 

	}

   public Double fetchCurrentPrice()  
  {  
  	//TODO 2. Write a function that fetches the current price as a double from 
  	//the provided URL. Open up an example page and use your browser to "view source". 
  	//This will give you hints on how to extract the relevant information from the HTML. 
  	//Further Hint: the price can be found in the <meta> properties
  	//Return null if no price can be found.

    StringBuilder content = new StringBuilder();  
  // Use try and catch to avoid the exceptions  
    try  
    {  
      URLConnection urlConnection = this.url.openConnection(); // creating a urlconnection object  
  
      // wrapping the urlconnection in a bufferedreader  
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));  
      String line;  
      // reading from the urlconnection using the bufferedreader  
      while ((line = bufferedReader.readLine()) != null)  
      {  
      	if (line.contains("property=\"og:description\""))
      	{
      	  for(String word: line.split(" "))
      	  {
      	  	if (word.contains("$")){
      	  		String clean = word.replace(",","").substring(1);
      	  		return Double.parseDouble(clean);
      	  	}
      	  }
      	}
          
      }  
      bufferedReader.close();  
    }  
    catch(Exception e)  
    {  
      e.printStackTrace();  
    }  
    return null;  
  }  

	   
}
