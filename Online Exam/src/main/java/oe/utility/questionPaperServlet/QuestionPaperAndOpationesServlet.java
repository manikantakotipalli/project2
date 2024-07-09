package oe.utility.questionPaperServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import oe.utility.Dao.OnlineExamDao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class QuestionPaperAndOpationesServlet
 */
@WebServlet("/Questions")
public class QuestionPaperAndOpationesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		
		
		
		
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		OnlineExamDao oe = new OnlineExamDao();

		ArrayList al = oe.getQuestions(); // Calling getgQuestions for random question
        ArrayList oplist=new ArrayList();
		for (int i = 0; i < al.size(); i += 2) {

			int question_id = (int) al.get(i);
			//String question_name = (String) al.get(i + 1);

			oplist = oe.getOpstions(question_id);

		
			//for (int k = 0; k < oplist.size(); k += 2) {

			//	count++;

			//	int option_id = (int) oplist.get(k);
				//String option_name = (String) oplist.get(k + 1);

				//HttpSession session1 = request.getSession(); // Session Tracking
				//session1.setAttribute("question_id", question_id);
				//session1.setAttribute("question_name", question_name);

				//session1.setAttribute("option_id", option_id);
				//session1.setAttribute("option_name", option_name);

				//session1.setAttribute("count", count);
				//response.sendRedirect("QuestionsForm.jsp");
			//}

		}
		HttpSession session1 = request.getSession();
		
		session1.setAttribute("al", al);
		session1.setAttribute("oplist", oplist);
		
		response.sendRedirect("QuestionsForm.jsp");
		
		
		
		
		

		// TODO Auto-generated method stub
		// doGet(request, response);
	}

}
