    
    
   <!DOCTYPE html>
<html lang="en">
<head> 
    <meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<title> Student Register Page</title>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        
       
       
       
    </style>
    </head>
<body>
   
   
   <div class="container-fluid">

			<div class="row">
				<div class="col-md-3"></div>
				
				<div class="col-md-6" style="padding-top:40px;">
					<form class="shadow-lg p-3 mb-5 bg-white rounded form-group" method="post" method="get" action="Studentdata">
						<div>
							<h4 class="headding" style="text-align:center;"><b>STUDENT</b></h4><hr>		
						</div>
						<label for="firstname" class="labels">First Name</label>
							<input type="text" id="firstname" name="firstname" placeholder="Enter First Name" class="input1 form-control"
							onfocus="firstnameonfocus()" onblur="firstnameonblur()"></br>
								<p id="paragraph1" class="commonparagraph"></p>
						<label for="lastname" class="labels">Last Name</label>
							<input type="text" id="lastname" name="lastname" placeholder="Enter Last Name" class="input2 form-control"
							onfocus="lastnameonfocus()" onblur="lastnameonblur()"></br>
								<p id="paragraph2" class="commonparagraph"></p>
							
						<label for="phonenumber" class="labels">Phone Number</label>
							<input type="text" id="phonenumber" name="mobilenumber" placeholder="Enter Mobile Number" class="input3 form-control"
							onfocus="mobilenumberonfocus()" onkeypress="mobilenumberonkeypress()" onblur="mobilenumberonblur()"></br>
								<p id="paragraph3" class="commonparagraph"></p>
							
						<label for="emailid" class="labels">Email-ID</label>
							<input type="email" id="emailid" name="emailaddress" placeholder="Enter Email-ID" class="input5 form-control"
							onfocus="emailidonfocus()" onblur="emailidonblur()"></br>
								<p id="paragraph5" class="commonparagraph"></p>
							
						<label for="couse" class="labels">Course</label>
							<select  id="course" name="coursename"class="input6 form-control">
								<option value="#">Select</option>
								<option value="javafullstack">Java Full Stack</option>
								<option value="pythonfullstack">Python Full Stack</option>
								<option value="devops">Devops</option>
								<option value="testingtools">Testing Tools</option>
							 </select></br>
								<p id="paragraph6"></p>
								
						<label for="batchnumber" class="labels">Batch No</label>
							<input type="text" id="batchnumber" name="batchno" placeholder="Enter Batch Number" class="input7 form-control"
							onfocus="batchnumberonfocus()" onkeypress="batchnoonkeypress()" onblur="batchnumberonblur()"></br>
								<p id="paragraph7" class="commonparagraph"></p>
								
						<label for="createpassword" class="labels">Create Password</label>
							<input type="password" id="createpassword" name="createpassword" placeholder="Create Password" class="input8 form-control"
							onfocus="createpasswordonfocus()" onblur="createpasswordonblur()"></br>
								<p id="paragraph8" class="commonparagraph"></p>
								
						<label for="password" class="labels">Confirm Password</label>
							<input type="password" id="password" name="password" placeholder="Confirm Password" class="input9 form-control"
							onfocus="passwordonfocus()" onblur="passwordonblur()"></br>
								<p id="paragraph9" class="commonparagraph"></p>
								
						<button class="btn btn-success" onclick="return formonclick(event)">Submit</button>
					</form>
				</div>
				<div class="col-md-3"></div>
				
				</div>
				</div>
				
				
				
		<script>
			//keypress event for firstname
			function fnkeypress(event){
				var ch=event.which;
				if (!((ch >=65 && ch< 90) || (ch >=97 && ch<=122) || (ch==8)||(ch==32)|| (ch==0)))
				{
					event.preventDefault();
				}
			}
			//keypress event for lastname
			function lnkeypress(event){
				var ch=event.which;
				if (!((ch >=65 && ch< 90) || (ch >=97 && ch<=122) || (ch==8)||(ch==32)|| (ch==0)))
				{
					event.preventDefault();
				}
			}
		
			//First Name onfocus
				function firstnameonfocus(){
					document.getElementById("paragraph1").innerHTML="";
				}
			//First Name onblur
				function firstnameonblur(){
					var firstname = document.getElementById("firstname").value;
					
						if(firstname==""){
							document.getElementById("paragraph1").innerHTML="*Please Enter First Name";
							document.getElementById("paragraph1").style.color="red";
							return false;
						}
						else{
							document.getElementById("paragraph1").innerHTML="";
							return true;
						}
				}
				
				
			//Last Name onfocus
				function lastnameonfocus(){
					document.getElementById("paragraph2").innerHTML="";
				}
			//Last Name onblur
				function lastnameonblur(){
					var lastname = document.getElementById("lastname").value;
					
						if(lastname==""){
							document.getElementById("paragraph2").innerHTML="*Please Enter Last Name";
							document.getElementById("paragraph2").style.color="red";
							return false;
						}
						else{
							document.getElementById("paragraph2").innerHTML="";
							return true;
						}
				}
				
			//Phone Number onfocus
				function mobilenumberonfocus(){
					document.getElementById("paragraph3").innerHTML="";
				}
			//Phone Number Onkeypress
				function mobilenumberonkeypress(){
					var click=event.which;
							
							if((click>=48 && click<=57)){
								
									document.getElementById("paragraph3").innerHTML="";
							}
							else{
								event.preventDefault();
							}
				}
			//Phone Number onblur
				function mobilenumberonblur(){
					var phonenumber = document.getElementById("phonenumber").value;
					
						if(phonenumber==""){
							document.getElementById("paragraph3").innerHTML="*Please Enter Phone Number";
							document.getElementById("paragraph3").style.color="red";
							return false;
						}
						else if(phonenumber.length!=10){
							document.getElementById("paragraph3").innerHTML="*Please Enter Valied Phone Number";
							document.getElementById("paragraph3").style.color="red";
							return false;
						}
						else{
							document.getElementById("paragraph3").innerHTML="";
							return true;
						}
				}
				
			//Alternative Phone Number Onkeypress
				function altermobileonkeypress(){
					var click=event.which;
							
							if((click>=48 && click<=57)){
								
									document.getElementById("paragraph4").innerHTML="";
							}
							else{
								event.preventDefault();
							}
				}
				
				function altermobilenumberonblur(){
					var phonenumber = document.getElementById("alternativephonenumber").value;
					
						if(phonenumber.length!=10){
							document.getElementById("paragraph4").innerHTML="*Please Enter Valied Phone Number";
							document.getElementById("paragraph4").style.color="red";
							return false;
						}
						else{
							document.getElementById("paragraph4").innerHTML="";
							return true;
						}
				}
			
			//email id onfocus
				function emailidonfocus(){
					document.getElementById("paragraph5").innerHTML="";
				}
				
			//email id onblur
			
				function emailidonblur(){
					var mailid = document.getElementById("emailid").value;
					
						if(mailid==""){
							document.getElementById("paragraph5").innerHTML="*Please Enter Mail-ID";
							document.getElementById("paragraph5").style.color="red";
							return false;
						}
						else{
							document.getElementById("paragraph5").innerHTML="";
							return true;
						}
				}
			
			//batch no on focus
			
			function batchnumberonfocus(){
				document.getElementById("paragraph7").innerHTML="";
			}
		
			//batch no onblur
			function batchnumberonblur(){
				var batchno = document.getElementById("batchnumber").value;
					
						if(batchno==""){
							document.getElementById("paragraph7").innerHTML="*Please Enter Batch Number";
							document.getElementById("paragraph7").style.color="red";
							return false;
						}
						else{
							document.getElementById("paragraph7").innerHTML="";
							return true;
						}
			}
			
			//create password on focus
			function createpasswordonfocus(){
				document.getElementById("paragraph8").innerHTML="";
			}
			
			function createpasswordonblur(){
				var createpassword = document.getElementById("createpassword").value;
					
						if(createpassword==""){
							document.getElementById("paragraph8").innerHTML="*Please Enter Password";
							document.getElementById("paragraph8").style.color="red";
							return false;
						}
						else if(createpassword.length>15 || createpassword.length<8){
							document.getElementById("paragraph8").innerHTML="*Please Maintain Password Length Between 8 to 15...!";
							document.getElementById("paragraph8").style.color="red";
							return false;
						}
						else{
							document.getElementById("paragraph8").innerHTML="";
							return true;
						}
			}
			
			//confirm password on focus
			function passwordonfocus(){
				document.getElementById("paragraph9").innerHTML="";
			}
			
			function passwordonblur(){
				var confirmpassword = document.getElementById("password").value;
				var createpassword = document.getElementById("createpassword").value;	
						if(confirmpassword==""){
							document.getElementById("paragraph9").innerHTML="*Please Confirm Password";
							document.getElementById("paragraph9").style.color="red";
							return false;
						}
						else if(confirmpassword!=createpassword){
							document.getElementById("paragraph9").innerHTML="*Entered Password Didnt Match...!";
							document.getElementById("paragraph9").style.color="red";
							return false;
						}
						else{
							document.getElementById("paragraph9").innerHTML="";
							return true;
						}
			}
			
			//Submit click button
			function formonclick(){
				var firstname = document.getElementById("firstname").value;
				var lastname = document.getElementById("lastname").value;
				var phonenumber = document.getElementById("phonenumber").value;
				var mailid = document.getElementById("emailid").value;
				var batchno = document.getElementById("batchnumber").value;
				var createpassword = document.getElementById("createpassword").value;
				var confirmpassword = document.getElementById("password").value;
				
				if(firstname==="" || lastname === "" || phonenumber==="" || mailid==="" || batchno==="" || createpassword==="" || confirmpassword===""){
					alert("Please Fill All The blanks in Form...!");
					event.preventDefault();
					return false;
				}
				else if(phonenumber.length!=10){
					alert("Phone Number is Not Valied...!");
					event.preventDefault();
					return false;
				}
				else if(batchno.length>2){
					alert("Batch No does is not valied...!");
					event.preventDefault();
					return false;
				}
				else if(createpassword.length>15 || createpassword.length<8){
					alert("Password Is Not In Range between 8 to 15...!");
					event.preventDefault();
					return false;
				}
				else if(createpassword.length==createpassword){
					alert("Password Didn't Match...!");
					event.preventDefault();
					return false;
				}
				else{
					return true;
				}
			}
			document.getElementById("firstname").addEventListener("keypress",fnkeypress);
			document.getElementById("lastname").addEventListener("keypress",lnkeypress);
		</script>		
</body>
</html>