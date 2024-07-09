package oe.utility.StudentModel;

public class StudentModel {
	
	

private String firstname;
private String lasttname;
private long mobilenumber;
private String emailaddress;
private int coursename;
private long batchno;
private String createpassword;

public StudentModel() {
	
}
public StudentModel(String f,String l,long mn,String em,int c,long b,String cp) {
	
      firstname=f;
      
     lasttname=l;
	 mobilenumber=mn;
	 emailaddress=em;
	 
	 coursename=c;
	 
	 batchno=b;
	 createpassword=cp;
	
	
	
	
}

public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLasttname() {
	return lasttname;
}
public void setLasttname(String lasttname) {
	this.lasttname = lasttname;
}
public long getMobilenumber() {
	return mobilenumber;
}
public void setMobilenumber(long mobilenumber) {
	this.mobilenumber = mobilenumber;
}
public String getEmailaddress() {
	return emailaddress;
}
public void setEmailaddress(String emailaddress) {
	this.emailaddress = emailaddress;
}
public int  getCoursename() {
	return coursename;
}
public void setCoursename(int  coursename) {
	this.coursename = coursename;
}
public long getBatchno() {
	return batchno;
}
public void setBatchno(long batchno) {
	this.batchno = batchno;
}
public String getCreatepassword() {
	return createpassword;
}
public void setCreatepassword(String createpassword) {
	this.createpassword = createpassword;
}
public String toString() {
	return firstname+ ""+lasttname+ ""+mobilenumber+""+emailaddress+""+coursename+""+batchno+""+createpassword;
	
}

}
