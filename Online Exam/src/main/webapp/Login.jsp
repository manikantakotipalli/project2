
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>



<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
		<title> Admin Login Page</title>
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
		
		 $(document).ready(function() {
		        $('#username').blur(function() {
		        	
		        var name = $('#username').val();
		        
		         
		    
		        $.get('LoginPage', {userName : name}, function(responseText) {
		                $('#paragraph1').text(responseText);
		        });
		       });
		        });
		 
		

		</script>
	</head>
	<body>
		<div class="container-fluid">
                 
			<div class="row">
				<div class="col-md-3"></div>
				
				<div class="col-md-6" style="padding-top:100px;">
					<form class="shadow-lg p-3 mb-5 bg-white rounded form-group" method="post" action="LoginPage">
						<div>
							<h4 class="headding" style="text-align:center;"><b>Login</b></h4><hr>		
						</div>
						<label for="username" class="labels">User Name</label>
							<input type="text" id="username" name="username" placeholder="Enter User Name" class="input1 form-control"
							onfocus="usernameonfocus()" onblur="usernameonblur()"></br>
								<p id="paragraph1" class="commonparagraph"></p>
								
						<label for="password" class="labels">Password</label>
							<input type="password" id="password" name="password" placeholder="Password" class="input8 form-control"
							onfocus="passwordonfocus()" onblur="passwordonblur()"></br>
								<p id="paragraph2" class="commonparagraph"></p>
						<select name="languages" id="course" class="input6 form-control" onchange="myFunction()">
								<option value="submit" >Select</option>
								<option value="Admin" >Admin</option>
								<option value="Faculty" >Faculty</option>
								<option value="Student" >Student</option>
						</select></br>
						<p id="para1"></p>
						<button class="btn btn-success" onclick="return formonclick(event)">Submit</button>
					</form>
				</div>
				<div class="col-md-3"></div>
				
			</div>
		</div>	
		
		
		
		<script>
		function usernameonfocus(){
			document.getElementById("paragraph1").innerHTML="";
		}
		
		
		function passwordonfocus(){
			document.getElementById("paragraph2").innerHTML="";
		}
		function passwordonblur(){
			var password = document.getElementById("password").value;
			
			if(password==""){
				document.getElementById("paragraph2").innerHTML="*Please Enter Password...!";
				document.getElementById("paragraph2").style.color="red";
			}
			else{
				document.getElementById("paragraph2").innerHTML="";
			}
		}
		
		function formonclick(){
			var userid= document.getElementById("username").value;
			var password = document.getElementById("password").value;
			var x = document.getElementById("course").value;
			if(userid==""){
				alert("Please Give USER-ID...!");
					event.preventDefault();
					return false;
			}
			else if(x=="select"){
				document.getElementById("para1").innerHTML="*Please Select a Option...!";
				document.getElementById("para1").style.color="red";
				event.preventDefault();
				return false;
			}
			else if(password==""){
				alert("Please Give Password...!");
					event.preventDefault();
					return false;
			}
			else{
				return true;
			}
		}
		
		function myFunction(){
			
		}
	</script>



	</body>
</html>