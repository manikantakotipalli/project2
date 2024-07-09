package oe.utility.StoreQuestionsAndAnswersServlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import oe.utility.Dao.OnlineExamDao;

/**
 * Servlet implementation class StoreQuestionsAndAnswers
 */
@WebServlet("/QuestionServlet")
public class StoreQuestionsAndAnswersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		                       
		String question=request.getParameter("Question");
		
		String option1=request.getParameter("option1");
		
		String option2=request.getParameter("option2");
		                      
		String option3=request.getParameter("option3");
		String option4=request.getParameter("option4");
		
		String correctoption=request.getParameter("crtoption");
		StoringQuestionAndAnswersModel sqam=new StoringQuestionAndAnswersModel();
		
				//String question="What is html?";
		          sqam.setQuestion_name(question);
		          
		        
		          
		          sqam.setFirst_option(option1);
		          sqam.setSecond_option(option2);
		          sqam.setThird_option(option3);
		          sqam.setForth_option(option4);
		          
		          sqam.setCorrect_option(correctoption);
		
		

		OnlineExamDao oe=new OnlineExamDao();

		
		
		        String result=    oe.storingQuestionAndAnswers(sqam);
		
		   if(result.equals("ok")) {
			   
			   RequestDispatcher rd=request.getRequestDispatcher("/Questions.jsp");
				rd.forward(request, response); 
			   
		   }
		   
		
		
		        
		
		
		
		//doGet(request, response);
	}

}
