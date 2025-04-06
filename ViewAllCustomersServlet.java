package com;
import java.io.*;
import java.util.ArrayList;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/ViewAllCustomers")
public class ViewAllCustomersServlet extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException
	{
		ArrayList<CustomerBean> customers = new ViewAllCustomerDAO().viewAll();
		
		req.setAttribute("customerCollection", customers);
		
		req.getRequestDispatcher("ViewAll.jsp").forward(req, res);
		
		
	}

}
