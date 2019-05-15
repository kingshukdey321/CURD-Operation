package com.card.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.card.DAO.usercard;
import com.card.model.cardinformation;

/**
 * Servlet implementation class insertsavlet
 */
@WebServlet("/insertsavlet")
public class insertsavlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertsavlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");//get value fromn jsp to servlet
		System.out.println("fname" +fname);
		String lname = request.getParameter("lname");
		System.out.println("lname" +lname);
		String idno = request.getParameter("idno");
		System.out.println("idno" +idno);
		String gender = request.getParameter("gender");
		System.out.println("gender" +gender);
		String email = request.getParameter("email");
		System.out.println("email" +email);
		
		String psw = request.getParameter("psw");
		System.out.println("psw" +psw);
		
		
		
		cardinformation information = new cardinformation();
		information.setFname(fname);
		information.setLname(lname);
		information.setIdno(idno);
		information.setGender(gender);
		information.setEmail(email);
		information.setPsw(psw);
		
		
		Random r = new Random();
		int id = r.nextInt(10000);
		//String id = String.valueOf(x);		
		information.setId(id);
		System.out.println("ID:::::"+id);
		
		usercard daoobj = new usercard();
		boolean b = daoobj.insertPatientRegRecord(information);
		
		if(b)
		{
			request.setAttribute("idno",idno );
			RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
			rd.forward(request, response);			
		}
		else
			System.out.println("Record Not Inserted");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
