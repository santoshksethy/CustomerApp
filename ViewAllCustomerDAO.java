package com;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class ViewAllCustomerDAO 
{
	public ArrayList<CustomerBean> customers=new ArrayList<CustomerBean>();
	
	public ArrayList<CustomerBean> viewAll()
	{
		Connection con= DBConnection.getCon();
		
		try 
		{
			PreparedStatement ps= con.prepareStatement("select * from Customer72");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				CustomerBean cb= new CustomerBean();
				cb.setId(rs.getString(1));
				cb.setName(rs.getString(2));
				cb.setCity(rs.getString(3));
				cb.setMid(rs.getString(4));
				cb.setPhno(rs.getLong(5));
				
				customers.add(cb);
			}
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		
		
		return customers;
	}

}
