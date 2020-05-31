package com.feurdy.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feurdy.beans.Personne;


public class test extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws
	ServerException,IOException{
		//appelle d'une class
	   
		Personne pers=new Personne();
	    pers.setNom("Galogbe");
	    
		String parameter=request.getParameter("auteur");
		String message="je suis un architect JEEn je me nomme: "+parameter;
		request.setAttribute("var", message);
		
		request.setAttribute("personne", pers);
		try {
			this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/*	response.setContentType("text/html");
			response.setCharacterEncoding( "UTF-8" );
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset=\"utf-8\" />");
			out.println("<title>Test</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<p>Ceci est une page générée depuis une servlet de galogbe.</p>");
			out.println("</body>");
			out.println("</html>");*/
		
		
		
	}
}
