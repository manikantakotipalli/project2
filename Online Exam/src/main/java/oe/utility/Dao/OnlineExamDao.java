package oe.utility.Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.RowId;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import oe.utility.Dbconnection.DBconnection;
import oe.utility.FacultyModel.FacultyModel;
import oe.utility.StoreQuestionsAndAnswersServlet.StoringQuestionAndAnswersModel;
import oe.utility.StudentModel.StudentModel;
import oe.utility.interfaces.Interfaces;

/**
 * Here "OnlineExamDao" is a Class and It's Implementing some method from
 * Interfaces..!!
 */
public class OnlineExamDao implements Interfaces {
	Connection con = DBconnection.getConnection(); // Data Base Connection..!
	String result = "DATANOTFOUND";
	String status = "null";
	String faculty = "null";
	String student = "null";

	/**
	 * 
	 * date: 29-05-2024 Here "checkingUserId" method will have checked the username
	 * is Valid or Not
	 */
	@Override
	public String checkingUserId(String s) {

		System.out.println("Data Came From AdminLoginServlet");

		// Connection con=DBconnection.getConnection(); //Data Base Connection..!

		try {
			PreparedStatement ps1 = con.prepareStatement("select *from studentdata where student_id=(?)");

			ps1.setString(1, s);

			/// Result Set
			ResultSet rs1 = ps1.executeQuery();

			rs1.last();

			int n1 = rs1.getRow();

			if (n1 > 0) {
				result = "DATAFOUND";
			} else {
				PreparedStatement ps2 = con.prepareStatement("select *from facultydata where faculty_id=(?)");

				ps2.setString(1, s);

				/// Result Set
				ResultSet rs2 = ps2.executeQuery();

				rs2.last();

				int n2 = rs2.getRow();
				System.out.println(n2 + "-" + "row is There ");
				if (n2 > 0) {
					result = "DATAFOUND";
				} else {
					PreparedStatement ps3 = con.prepareStatement("select *from adminlogin where username=(?)");

					ps3.setString(1, s);

					/// Result Set
					ResultSet rs3 = ps3.executeQuery();

					rs3.last();

					int n3 = rs3.getRow();
					System.out.println(n3 + "-" + "row is There ");
					if (n3 > 0) {
						result = "DATAFOUND";
					}
				}

			}
		} catch (Exception e) {

			System.out.println(e);

		}
		return result;

	}

	public String AdminLoginDetails(String username, String password) {
		// Connection con=DBconnection.getConnection(); //Data Base Connection..!
		try {
			PreparedStatement ps = con.prepareStatement("select * from adminlogin where username = ? and passwords=?");
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			rs.last();
			int n = rs.getRow();
			if (n > 0) {
				status = "Admin";
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

	/**
	 * 
	 * 
	 * FacultyLoginDetails
	 */

	public String FacultyLoginDetails(String username, String password) {

		// Connection con=DBconnection.getConnection(); //Data Base Connection..!

		try {
			PreparedStatement ps = con.prepareStatement("select * from facultydata where faculty_id=? and passwords=?");

			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			rs.last();
			int n = rs.getRow();
			if (n > 0) {
				faculty = "Faculty";
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return faculty;

	}

	/**
	 * 
	 * StudentLogin
	 */
	public String StudentLoginDetails(String username, String password) {
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("select * from studentdata where student_id=? and passwords=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			rs.last();
			int n = rs.getRow();
			if (n > 0) {
				student = "Student";

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return student;

	}

	/**
	 * StoringStudentdata
	 */

	public String StoreStudentData(StudentModel sm) {
		String ok = "null";

		// Connection con=DBconnection.getConnection(); //Data Base Connection..!

		try {
			PreparedStatement ps = con.prepareStatement("insert into studentdata values(?,?,?,?,?,?,?,?)");

			ps.setInt(1, 0);
			ps.setString(2, sm.getFirstname());
			ps.setString(3, sm.getLasttname());

			ps.setLong(4, sm.getMobilenumber());
			ps.setString(5, sm.getCreatepassword());
			ps.setString(6, sm.getEmailaddress());
			ps.setInt(7, sm.getCoursename());
			ps.setLong(8, sm.getBatchno());

			int n = ps.executeUpdate();

			if (n > 0) {

				ok = "yes";

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ok;
	}

	/**
	 * countting students
	 * 
	 * @return
	 */
	public int countOfStudent() {
		int count = 0;
		// Connection con=DBconnection.getConnection(); //Data Base Connection..!

		try {
			PreparedStatement ps = con.prepareStatement("select *from studentdata ");

			ResultSet rs = ps.executeQuery();
			rs.last();
			count = rs.getRow();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return count;

	}

	/**
	 * Storing Faculty Data
	 */
	public String StoreFacultyData(FacultyModel fm) {
		String ok = "null";
		// Connection con=DBconnection.getConnection(); //Data Base Connection..!

		try {
			PreparedStatement ps = con.prepareStatement("insert into facultydata values(?,?,?,?,?,?,?)");

			ps.setInt(1, 0);
			ps.setString(2, fm.getFistrname());
			ps.setString(3, fm.getLastname());
			ps.setLong(4, fm.getPhonenumber());
			ps.setString(5, fm.getEmail());
			ps.setInt(6, fm.getCoursename());
			ps.setString(7, fm.getPassword());

			int n = ps.executeUpdate();
			if (n > 0) {

				ok = "yes";

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ok;

	}

	/**
	 * Coutting Faculty
	 * 
	 * @return
	 * 
	 * 
	 */
	public int countOfFaculty() {

		int count = 0;
		// Connection con=DBconnection.getConnection(); //Data Base Connection..

		try {
			PreparedStatement ps = con.prepareStatement("select *from facultydata");
			ResultSet rs = ps.executeQuery();
			rs.last();
			count = rs.getRow();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return count;

	}

	/**
	 * all student data
	 */

	public List allStudentData() {
		System.out.println("student method");
		List al1 = new ArrayList();

		try {
			PreparedStatement ps = con.prepareStatement(
					"	select s.student_id, s.first_name, s.last_name, s.phone_number,s.passwords, s.email_id,c.course_name,\r\n"
							+ "                            s.batch_number\r\n"
							+ "                       from studentdata as s left outer join coursedata as c on s.course_name=c.course_id;");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				al1.add(0, rs.getLong("student_id"));
				al1.add(1, rs.getString("first_name"));
				al1.add(2, rs.getString("last_name"));
				al1.add(3, rs.getLong("phone_number"));
				al1.add(4, rs.getString("passwords"));
				al1.add(5, rs.getString("email_id"));
				al1.add(6, rs.getString("course_name"));
				al1.add(7, rs.getLong("batch_number"));

			}

		} catch (SQLException e) {

			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al1;
	}

	/**
	 * All Faculty data
	 * 
	 * @return
	 */
	public List allfacultyData() {
		System.out.println("faculty method");

		List al = new ArrayList();

		try {
			PreparedStatement ps = con.prepareStatement(
					"    select f.faculty_id, f.first_name, f.last_name, f.phone_number,f.email_id,f.passwords,c.course_name\r\n"
							+ "                       from facultydata as f left outer join coursedata as c on f.course_name=c.course_id");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				al.add(0, rs.getLong("faculty_id"));

				al.add(1, rs.getString("first_name"));

				al.add(2, rs.getString("last_name"));

				al.add(3, rs.getLong("phone_number"));

				al.add(4, rs.getString("email_id"));

				al.add(5, rs.getString("passwords"));

				al.add(6, rs.getString("course_name"));

			}

			// System.out.println(al);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return al;

	}

	/**
	 * question data
	 * 
	 * @param sqam
	 * @return
	 */
	public String storingQuestionAndAnswers(StoringQuestionAndAnswersModel sqam) {
		String result = "null";
		String question = sqam.getQuestion_name();

		String option1 = sqam.getFirst_option();
		String option2 = sqam.getSecond_option();
		String option3 = sqam.getThird_option();
		String option4 = sqam.getForth_option();

		System.out.println(question);

		String correctoption = sqam.getCorrect_option();

		try {
			PreparedStatement ps1 = con.prepareStatement("insert into question values(?,?)");
			ps1.setInt(1, 0);
			ps1.setString(2, question);

			int n = ps1.executeUpdate();

			PreparedStatement ps2 = con.prepareStatement("select *from question");
			ResultSet rs2 = ps2.executeQuery();
			rs2.last();

			int question_id = rs2.getRow();

			if (n > 0) {
				// option1...!
				PreparedStatement ps3 = con.prepareStatement("insert into answers values(?,?,?)");

				ps3.setInt(1, 0);
				ps3.setInt(2, question_id);
				ps3.setString(3, option1);
				ps3.executeUpdate();
				// option2...!
				PreparedStatement ps4 = con.prepareStatement("insert into answers values(?,?,?)");
				ps4.setInt(1, 0);
				ps4.setInt(2, question_id);
				ps4.setString(3, option2);
				ps4.executeUpdate();

				if (option3 != "") {
					// option3...!
					PreparedStatement ps5 = con.prepareStatement("insert into answers values(?,?,?)");
					ps5.setInt(1, 0);
					ps5.setInt(2, question_id);
					ps5.setString(3, option3);
					ps5.executeUpdate();
				}

				if (option4 != "") {
					// option4...!
					PreparedStatement ps6 = con.prepareStatement("insert into answers values(?,?,?)");
					ps6.setInt(1, 0);
					ps6.setInt(2, question_id);
					ps6.setString(3, option4);
					ps6.executeUpdate();
				}

				PreparedStatement ps7 = con
						.prepareStatement("select answers_id from answers where question_id=? and answer_name=?");

				ps7.setInt(1, question_id);
				ps7.setString(2, correctoption);

				ResultSet rs = ps7.executeQuery();
				List l = new ArrayList();

				while (rs.next()) {

					l.add(0, rs.getInt("answers_id"));
				}
				int answer_id = (int) l.get(0);

				if (answer_id > 0) {

					PreparedStatement ps8 = con.prepareStatement("insert into correctanswer values(?,?,?)");

					ps8.setInt(1, answer_id);
					ps8.setInt(2, question_id);
					ps8.setString(3, correctoption);
					int r = ps8.executeUpdate();

					if (r > 0) {
						result = "ok";
					}

				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	/**
	 * Taking Random question from D=question table
	 * 
	 * @return
	 */

	public ArrayList getQuestions() {
		System.out.println("okkkk");
		ArrayList al = new ArrayList();
		try {
			PreparedStatement ps = con.prepareStatement("select question_id,question_name from question\r\n"
					+ "      order by rand()\r\n" + "      limit 2;");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				al.add(0, rs.getInt("question_id"));

				al.add(1, rs.getString("question_name"));

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return al;

	}

	public ArrayList getOpstions(int id) {

		ArrayList al = new ArrayList();
		try {
			PreparedStatement ps = con
					.prepareStatement("select answers_id,answer_name,question_id from answers where question_id=?");
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				al.add(rs.getInt("answers_id"));
				al.add(rs.getInt("question_id"));
				al.add(rs.getString("answer_name"));
				
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return al;

	}

}
