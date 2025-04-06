package com;
import java.sql.*;

public class DBConnection 
{
	public static  Connection con=null;
	
	static
	{
		try
		{
			Class.forName(DBInfo.DRIVER_NAME);
			con= DriverManager.getConnection(DBInfo.URL,DBInfo.USER_NAME,DBInfo.PASSWORD);
			
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	public static Connection getCon()
	{
		return con;
	}

}
