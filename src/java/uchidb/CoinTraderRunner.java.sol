package uchidb;

/**
 * @author skr
 */
public class CoinTraderRunner {


	public static void main(String[] args){

		//TODO 7. Write a runner function that fetches 
		//price data for each of the 20 coins listed in 
		//coins.txt every 1 mins and stores those prices
		//in a sqlite databse "data.db". 

		Database db = new Database("data.db");

		db.createTableIfNotExists("bitcoin");

		WebCoinPriceAPI w = new WebCoinPriceAPI("bitcoin");
		Double d = w.fetchCurrentPrice();

		db.insertIntoTable("bitcoin", d);
		
	}
}
