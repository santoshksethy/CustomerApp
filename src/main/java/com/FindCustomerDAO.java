package com;
import java.sql.*;
public class FindCustomerDAO 
{
	public CustomerBean cb= null;
	
	public CustomerBean findCustomer(Long phno)
	{
		Connection con= DBConnection.getCon();
		try 
		{
			PreparedStatement ps= con.prepareStatement("select * from Customer72 where phno=?");
			ps.setLong(1, phno);
			
			ResultSet rs = ps.executeQuery();
			
			cb= new CustomerBean();
			if(rs.next())
			{
				cb.setId(rs.getString(1));
				cb.setName(rs.getString(2));
				cb.setCity(rs.getString(3));
				cb.setMid(rs.getString(4));
				cb.setPhno(rs.getLong(5));
			}
			
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return cb;
		
	}
	

}
