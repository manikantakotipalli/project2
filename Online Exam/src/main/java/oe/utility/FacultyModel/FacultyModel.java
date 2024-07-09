package oe.utility.FacultyModel;

public class FacultyModel {

	private String fistrname;
	
	private String lastname;
	private long phonenumber;
	private String email;
	private int coursename;
	private String password;
	
	
	public FacultyModel() {
		
	}
	
	
public FacultyModel(String fistrname, String lastname,long phonenumber,String email,int coursename,String password) {
	
	      this.fistrname=fistrname;
	      this.lastname=lastname;
	      this.phonenumber=phonenumber;
	      this.email=email;
	      this.coursename=coursename;
	      this.password=password;
	
		
	}
	
	public String getFistrname() {
		return fistrname;
	}
	public void setFistrname(String fistrname) {
		this.fistrname = fistrname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public long getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(long phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	public int getCoursename() {
		return coursename;
	}


	public void setCoursename(int coursename) {
		this.coursename = coursename;
	}


	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "FacultyModel [fistrname=" + fistrname + ", lastname=" + lastname + ", phonenumber=" + phonenumber
				+ ", email=" + email + ", coursename=" + coursename + ", password=" + password + "]";
	}
	
	
}
