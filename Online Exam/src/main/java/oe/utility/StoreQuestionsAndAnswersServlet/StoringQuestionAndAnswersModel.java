package oe.utility.StoreQuestionsAndAnswersServlet;

public class StoringQuestionAndAnswersModel {
	private String question_name;
	private String first_option;
	private String second_option;
	private String third_option;
	private String forth_option;
	private String correct_option;
	




	public StoringQuestionAndAnswersModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public StoringQuestionAndAnswersModel(String question_name, String first_option, String second_option,
			String third_option, String forth_option,String correct_option) {
		super();
		this.question_name = question_name;
		this.first_option = first_option;
		this.second_option = second_option;
		this.third_option = third_option;
		this.forth_option = forth_option;
		this.correct_option=correct_option;
	}
	
	
	public String getQuestion_name() {
		return question_name;
	}
	public void setQuestion_name(String question_name) {
		this.question_name = question_name;
	}
	public String getFirst_option() {
		return first_option;
	}
	public void setFirst_option(String first_option) {
		this.first_option = first_option;
	}
	public String getSecond_option() {
		return second_option;
	}
	public void setSecond_option(String second_option) {
		this.second_option = second_option;
	}
	
	public String getThird_option() {
		return third_option;
	}
	public void setThird_option(String third_option) {
		this.third_option = third_option;
	}
	public String getForth_option() {
		return forth_option;
	}
	public void setForth_option(String forth_option) {
		this.forth_option = forth_option;
	}
	
	public String getCorrect_option() {
		return correct_option;
	}



	@Override
	public String toString() {
		return "StoringQuestionAndAnswersModel [question_name=" + question_name + ", first_option=" + first_option
				+ ", second_option=" + second_option + ", third_option=" + third_option + ", forth_option="
				+ forth_option + ", correct_option=" + correct_option + "]";
	}



	public void setCorrect_option(String correct_option) {
		this.correct_option = correct_option;
	}

	
	
}
