package oe.utility.FacultyDataServlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import oe.utility.Dao.OnlineExamDao;
import oe.utility.FacultyModel.FacultyModel;

import java.io.IOException;

/**
 * Servlet implementation class AddingFacultyData
 */
@WebServlet("/Faculty")
public class AddingFacultyData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		
		String fristname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String mb=request.getParameter("mobilenumber");
		String emailaddress=request.getParameter("emailaddress");
		  String coursename=request.getParameter("coursename");
		String createpassword=request.getParameter("createpassword");
	
		
		
		         long phonenumber=Long.parseLong(mb);
		         int c1;
				  
				   if(coursename.equals("javafullstack")) {
					   c1=1;
					   
				   }
				   else  if(coursename.equals("pythonfullstack")) {
					   c1=2;
					   
				   }
				   else  if(coursename.equals("devops")) {
					   c1=3;
					   
				   }
				   else  if(coursename.equals("testingtools")) {
					   c1=4;
					   
				   }
				   else {
					   c1=0;
					  
				   }
				   if(c1>0) {
		
		
		
		   /**
		    * setting data to FacultyModel ...!
		    */
		         FacultyModel fm=new FacultyModel();
		         
		         
		         fm.setFistrname(fristname);
		         fm.setLastname(lastname);
		         fm.setPhonenumber(phonenumber);
		         fm.setEmail(emailaddress);
		         fm.setCoursename(c1);
		         fm.setPassword(createpassword);
		
		
		            
	        OnlineExamDao oe=new OnlineExamDao();  //calling OnlineExamDao...!
	        
	              String  ok=  oe.StoreFacultyData(fm);
	              
	              if(ok.equals("yes")) {
	            	  
	            	  int count=oe.countOfFaculty();			    	 
		    	        request.setAttribute("Facultytotal",count);
	            	  
		    	        HttpSession	session=request.getSession();
		    	        session.setAttribute("count1", count);
						response.sendRedirect("AdminDashboard.jsp");
				    	 
				    	 
				     }
				     else {
				    	 RequestDispatcher rd=request.getRequestDispatcher("/AddingFaculty.jsp");
							rd.forward(request, response); 
				    	 
				    	 
				     }}
				   else {
					 	 RequestDispatcher rd=request.getRequestDispatcher("/AddingFaculty.jsp");
							rd.forward(request, response); 
					   
				   }
		
		
		
		
	}

}
