package oe.utility.StudentDataServlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import oe.utility.Dao.OnlineExamDao;
import oe.utility.StudentModel.StudentModel;

import java.io.IOException;

/**
 * Servlet implementation class AddingStudentData
 */



@WebServlet("/Studentdata")
public class AddingStudentData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		 String firstname=request.getParameter("firstname");
		  String lastname=request.getParameter("lastname");
		  
		  String mobilenumber=request.getParameter("mobilenumber");
		  String emailaddress=request.getParameter("emailaddress");
		  String coursename=request.getParameter("coursename");
		  String batchno=request.getParameter("batchno");
		  String createpassword=request.getParameter("createpassword");
		 
		  
		     long batch=Long.parseLong(batchno);
		     
		     long phonenumber=Long.parseLong(mobilenumber);
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
		   
		   if (c1>0) {  
			   /**
			    * Setting to Steundent Model here...!
			    */
		   		StudentModel sm= new StudentModel();
			     sm.setFirstname(firstname);
			     sm.setLasttname(lastname);
			     sm.setMobilenumber(phonenumber);
			     sm.setEmailaddress(emailaddress);
			     sm.setCoursename(c1);
			     sm.setBatchno(batch);
			     sm.setCreatepassword(createpassword);
			    
			   
			    
			     OnlineExamDao oe=new OnlineExamDao(); //calling OnlineExamDao..!
			     String ok=oe.StoreStudentData(sm);
			               
			     if(ok.equals("yes")) {
			    	    
			    	            
			    	       int count=oe.countOfStudent();			    	 
			    	       request.setAttribute("Studenttotal",count);
			    	        
			    	   
	                     HttpSession	session=request.getSession();
							
						session.setAttribute("count", count);
							response.sendRedirect("AdminDashboard.jsp"); 
			     }
			     else {
			    	 RequestDispatcher rd=request.getRequestDispatcher("/AddingStudent.jsp");
						rd.forward(request, response); 
			    	 
			    	 
			         }
			     
	                       }
     	    else {
					
		     RequestDispatcher rd=request.getRequestDispatcher("/AddingStudent.jsp");
						rd.forward(request, response); 
					  
			}
		  
		
		
	}

}
