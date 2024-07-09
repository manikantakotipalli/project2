package oe.utility.adminloginservlet;

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
 * Servlet implementation class AdminLoginServlet
 */
/**  
 *  This Servlet is Belongs to AdminLogin Page..!!!
 */
@WebServlet("/LoginPage")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
                                                      

	/**
	 * @see   HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)  
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/**
		 * Here getting Data From Front End and checking username...!!! 
		 */
		String userName = request.getParameter("userName").trim();
		        
		         OnlineExamDao da=new OnlineExamDao();//OnlinExamDao Instance
		
	            String s=   da.checkingUserId(userName);
	 
	  if(s.equals("DATAFOUND")){
	
	  String greetings = "VALID";
	
	    response.setContentType("text/plain");
	response.getWriter().write(greetings);
	     
	     }
	else 
	    {
		String greetings = " NOT VALID"; 
		
		response.setContentType("text/plain");
		
		response.getWriter().write(greetings);
		
	    }
		
	
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * Here Getting data from Front End What user has Entered..!!
		 */
		 OnlineExamDao da=new OnlineExamDao();//OnlinExamDao Instance
	        String username=request.getParameter("username");
	      	String password=request.getParameter("password");
		    String person = request.getParameter("languages"); 
		    
		    
			
		    
		    
		    if(person.equals("Admin")) {
		    	
	       String status=da.AdminLoginDetails(username, password);
		     
	       if(status.equals("Admin")) {
	    	   
			//	request.setAttribute("username",username );
			//	RequestDispatcher rd=request.getRequestDispatcher("/AdminDashboard.jsp");
			//	rd.include(request, response);
				
				  
	    	   da. getQuestions();  
				
			    HttpSession	session1=request.getSession();
				
				session1.setAttribute("username", username);
				
		
				OnlineExamDao oe=new OnlineExamDao();
				int count1=oe.countOfStudent();
				
				HttpSession	session2=request.getSession();  //Session Tracking
				session2.setAttribute("count1", count1);
				
				
				
				int count2=oe.countOfFaculty();
				
				HttpSession	session3=request.getSession();  //Session Tracking
				session3.setAttribute("count2", count2);
				
				response.sendRedirect("AdminDashboard.jsp");
				
				
				
				
				
				
				
			}
			else {
				String info=" not valid";
				request.setAttribute("username",info );
			
				RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
				rd.forward(request, response);
			}
	       
	       
		    }
		    else if(person.equals("Faculty")) {
		    	
		    	String status=da.FacultyLoginDetails(username, password);
		    	if(status.equals("Faculty")) {
				request.setAttribute("username",username );
				RequestDispatcher rd=request.getRequestDispatcher("/FacultyDashboard.jsp");
					rd.include(request, response);
		    		
		    		
		    		   
				
					
		    		
		    		
		    		
		    		
				}
		    	else {
		    		String info=" not valid";
					request.setAttribute("username",info );
				
					RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
					rd.forward(request, response);
		    		
		    	}
		    	
		    	
		    	
			}

		    else if	(person.equals("Student")) {
					
		    	String status=da.StudentLoginDetails(username, password);
		    	if(status.equals("Student")) {
					request.setAttribute("username",username );
					RequestDispatcher rd=request.getRequestDispatcher("/StudentDashboard.jsp");
					rd.include(request, response);
				}
		    	else {
		    		String info=" not valid";
					request.setAttribute("username",info );
				
					RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
					rd.forward(request, response);
		    		
		    	}
		    	
				
		    }
		    
		    else {
		    	RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
				rd.forward(request, response);
		    	
		    }
		    		  
	}	
}
