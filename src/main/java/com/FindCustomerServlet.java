package com;
import java.io.IOException;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
@SuppressWarnings("serial")
@WebServlet("/searchCust")
public class FindCustomerServlet extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
	{
		String phno = req.getParameter("cph");
		CustomerBean customer = new FindCustomerDAO().findCustomer(Long.parseLong(phno));
		
		if(customer.getId()==null)
		{
			req.setAttribute("msg", "Customer don't exist!!!");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			req.setAttribute("cBean", customer);
			req.getRequestDispatcher("FoundCustomer.jsp").forward(req, res);

		}
		
		
		
		
	}

}
