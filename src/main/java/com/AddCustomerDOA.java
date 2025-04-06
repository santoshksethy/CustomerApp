package com;
import java.sql.*;
public class AddCustomerDOA 
{
	public int k=0;
	
	public int addCustomer(CustomerBean cb)
	{
		Connection con= DBConnection.getCon();
		try
		{
			PreparedStatement add = con.prepareStatement("insert into Customer72 values(?,?,?,?,?)");
			add.setString(2, cb.getName());
			add.setString(3, cb.getCity());
			add.setString(4, cb.getMid());
			add.setLong(5, cb.getPhno());
			
			String phno = cb.getPhno().toString();
			String code= "NIT"+phno.substring(5,phno.length()-1);
			
			add.setString(1, code);
			
			k = add.executeUpdate();
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		
		
		return k;
	}

}
