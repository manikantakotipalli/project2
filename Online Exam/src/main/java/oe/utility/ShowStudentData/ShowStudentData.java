package oe.utility.ShowStudentData;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import oe.utility.Dao.OnlineExamDao;

import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class ShowStudentData
 */
@WebServlet("/ShowStudentData")
public class ShowStudentData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("callled student");
		OnlineExamDao oe=new OnlineExamDao();  // getting  Student  List data from Dao
        List al= oe.allStudentData();

    
     request.setAttribute("studentdata",al);
     
     HttpSession	session=request.getSession();
		
	session.setAttribute("studentdata", al);
		  // session tracking 
		response.sendRedirect("AdminDashboard.jsp");
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		doGet(request, response);
	}

}
