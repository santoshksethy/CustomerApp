package com;
import java.sql.*;
public class RemoveCustomerDAO 
{
	public int k=0;
	public int removeCustomer(Long num)
	{
		try
		{
			Connection con= DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("delete from Customer72 where phno=?");
			ps.setLong(1,num);
			k = ps.executeUpdate();
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		
		return k;
	}

}
