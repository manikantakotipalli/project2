package oe.utility.ShowFacultyData;

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
 * Servlet implementation class ShowFacultyData
 */
@WebServlet("/ShowFacultyData")
public class ShowFacultyData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("called Faculty");  
		       OnlineExamDao oe=new OnlineExamDao();
		                                                //Getting Faculty List data from dao
		        List al=    oe.allfacultyData();
		           System.out.println(al);
		        request.setAttribute("facultydata",al);
		        
		        HttpSession	session=request.getSession();
		   		
		   	session.setAttribute("facultydata", al);  //session tracking 
		   		response.sendRedirect("AdminDashboard.jsp");
		   		
		       
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
