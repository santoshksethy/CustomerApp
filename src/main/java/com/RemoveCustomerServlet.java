package com;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/remove")
public class RemoveCustomerServlet extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
	{
		int k= new RemoveCustomerDAO().removeCustomer(Long.parseLong(req.getParameter("ph")));
		if(k>0)
		{
			req.setAttribute("msg", "Customer Removed!!");
			req.getRequestDispatcher("remove.jsp").forward(req, res);
		}
		else
		{
			req.setAttribute("msg", "Customer Don't Exist!!");
			req.getRequestDispatcher("unsuccess.jsp").forward(req, res);
		}
		
	}

}
