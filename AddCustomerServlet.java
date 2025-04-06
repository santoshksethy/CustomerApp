package com;
import java.io.IOException;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
@SuppressWarnings("serial")
@WebServlet("/addCustomer")
public class AddCustomerServlet extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
	{
		CustomerBean cb= new CustomerBean();
	//	cb.setId(req.getParameter("cname"));
		cb.setName(req.getParameter("cname"));
		cb.setCity(req.getParameter("ccity"));
		cb.setMid(req.getParameter("cmail"));
		cb.setPhno(Long.parseLong(req.getParameter("cph")));
		
//		String phno= req.getParameter("cph").toString();
//		cb.setId("NIT"+phno.substring(5,phno.length()-1));
		
		int k= new AddCustomerDOA().addCustomer(cb);
		
		if(k>0)
		{
			req.setAttribute("success", "Customer data recorded sucessfully!!<br>");
			req.getRequestDispatcher("AddCustomer.jsp").forward(req, res);
		}
		
	}

}
