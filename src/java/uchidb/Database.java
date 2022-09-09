package uchidb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException; 
import java.sql.Statement;
import java.sql.PreparedStatement;

/**
 * @author skr
 */
public class Database {

	private Connection conn;

	public Database(String database_path){
		//TODO 3. construct a database by creating an SQLlite database connection
		//The connection should be stored as an instance variable.

	}

	public void createTableIfNotExists(String coin_name){
		//TODO 4. Use the sqlite connection to create a new table named with the coin_name
		//only if it doesn't already exist. 
		//This table should have three columns: a integer primary key, a timestamp, and a price.
		//This timestamp can be insertion time and doesn't have to be the actual fetch time

	}


	public void insertIntoTable(String coin_name, Double price){
		//TODO 5. Use the sqlite connection to insert a new record into the 
		//the database. 
		//The timestamp can be insertion time and doesn't have to be the actual 
		//fetch time
	}


	public String findReversal(){
		//TODO 6. Use the sqlite connection to find the coin that
		//has most significantly moved up or down in price in the 
		//last 15 mins. If the coin has moved up in price return the
		//string "-<coin_name>", if it has moved down "+<coin_name>"

		return ""
	}

	   
}
