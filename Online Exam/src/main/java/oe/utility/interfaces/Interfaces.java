package oe.utility.interfaces;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import oe.utility.FacultyModel.FacultyModel;
import oe.utility.StoreQuestionsAndAnswersServlet.StoringQuestionAndAnswersModel;
import oe.utility.StudentModel.StudentModel;

/**
 * This interface contains all method Declarations of OnlineExamDao..!!!
 */

public interface Interfaces {
	
	/**
	  * "checkingUserId" method for checking userId in database..!!!
	 */
	public String checkingUserId(String s);
/**
 * 
 * "AdminLoginDetails" method for checking Admin Login Deatls...!!!
 */
	public String AdminLoginDetails(String username, String password );
	/**
	 * 
	 * 
	 * FacultyLoginDetails
	 */
	
	public String FacultyLoginDetails(String username, String password);
	/**
	 * 
	 * StudentLogin
	 */
	public String StudentLoginDetails(String username, String password) ;
	
	/**
	 * StoringStudentdata
	 */
	
	public String StoreStudentData(StudentModel sm);
	/**
	 * countting students
	 * @return
	 */
	public int countOfStudent();
	/**
	 * Storing Faculty Data
	 */
	public String StoreFacultyData(FacultyModel fm);
	/**
	 * Coutting Faculty
	 * @return
	 * 
	 * 
	 */
	public int countOfFaculty();
	/**
	 * all student data
	 */

	public List allStudentData();
	/**
	 * All Faculty data
	 * @return
	 */
	public List allfacultyData();
	/**
	 *  question data
	 * @param sqam
	 * @return
	 */
	public String storingQuestionAndAnswers(StoringQuestionAndAnswersModel sqam);
	/**
	 * Taking Random question from D=question table
	 * @return
	 */
	
	 public ArrayList getQuestions();
	 
}