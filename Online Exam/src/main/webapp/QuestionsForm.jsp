<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="icon" href="../pictures/OBOkart Logo copy1.png"
	type="image/x-icon">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<script type="module"
	src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<link rel="stylesheet" href="nav.html">
<title>Vcube</title>
<style>
header {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	backdrop-filter: blur(10px);
	padding: 0rem 5%;
	display: flex;
	align-items: center;
	justify-content: space-between;
	z-index: 1000;
	box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
}

header .logo span {
	color: red;
}

header .navbar a {
	font-size: 2rem;
	padding: 0 1.5rem;
	padding-top: 20px;
	color: #060606;
	text-decoration-line: none;
	font-weight: bold;
}

header .navbar a:hover {
	color: rgb(254, 201, 27);
	text-decoration-line: none;
	transform: scale(1.2);
}

header .icons a {
	font-size: 2.5rem;
	color: #fdfcfc;
	margin-left: 2rem;
	transform: scale(1.2);
}

header .icons a:hover {
	color: rgb(254, 201, 27);
	text-decoration-line: none;
}

header #toggler {
	display: none;
}

header .fa-bars {
	font-size: 3rem;
	color: #333;
	border-radius: .5rem;
	padding: .5rem 1.5rem;
	cursor: pointer;
	border: .1rem solid rgba(0, 0, 0, .3);
	display: none;
}

.drop_menu {
	display: none;
	position: absolute;
	right: 2rem;
	top: 80px;
	width: 150px;
	height: 0px;
	background: rgba(6, 5, 5, 0.783);
	margin-top: 5px;
	overflow: hidden;
	transition: height .2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.drop_menu.open {
	height: 165px;
}

.drop_menu a {
	text-align: center;
	padding: 1rem;
	color: #fdfbfb;
	font-size: 25px;
	display: flex;
	justify-content: center;
	text-decoration: none;
	font-weight: bold;
}

.drop_menu a:hover {
	transform: scale(1.2);
}

.drop_menu {
	display: block;
}

@media ( max-width :1440px) {
	html {
		font-size: 55%;
	}
}

@media ( max-width :768px) {
	header .fa-bars {
		display: flex;
	}
	header .navbar {
		position: absolute;
		top: 100%;
		left: 0;
		right: 0;
		background: #080000;
		border-top: .1rem solid rgba(0, 0, 0, .1);
	}
	header .navbar a {
		margin: 1.5rem;
		padding: 1.0rem;
		background: #0c0000;
		border: .1rem solid rgba(0, 0, 0, .1);
		display: block;
	}
	header .icons {
		display: none;
	}
}

@media ( max-width :768px) {
	header .navbar a {
		display: none;
	}
	header .navbar {
		display: none;
	}
	header .fa-bars {
		display: flex;
		background-color: rgba(252, 250, 250, 0.929);
		transition: 0.3s;
	}
}

header .fa-bars:hover {
	transform: scale(1.1);
}

@media ( max-width :430px) {
	html {
		font-size: 40%;
	}
	header .fa-bars {
		display: flex;
		background-color: rgba(252, 250, 250, 0.929);
		font-size: x-large;
	}
	header .navbar a {
		display: none;
	}
	header .navbar {
		display: none;
	}
	.center {
		display: flex;
		justify-content: center;
		align-items: center;
		font-size: 30px;
		color: rgb(246, 217, 56);
	}
}

.drop_menu {
	display: none;
	position: absolute;
	right: 2rem;
	top: 80px;
	width: 150px;
	height: 0px;
	background: rgba(6, 5, 5, 0.783);
	margin-top: 5px;
	overflow: hidden;
	transition: height .2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.drop_menu.open {
	height: 50px;
}

.drop_menu a {
	text-align: center;
	padding: 1rem;
	color: #fdfbfb;
	font-size: 25px;
	display: flex;
	justify-content: center;
	text-decoration: none;
	font-weight: bold;
}

.drop_menu a:hover {
	transform: scale(1.2);
}

.drop_menu {
	display: block;
}

.cardBox {
	position: relative;
	width: 100%;
	padding: 20px;
}

.cardBox .card {
	position: relative;
	background: (--white);
	padding: 30px;
	border-radius: 20px;
	display: flex;
	justify-content: space-between;
	box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
	cursor: pointer;
}

.cardBox .card .numbers {
	position: relative;
	font-weight: 500;
	font-size: 2.5rem;
	color: var(--yellow);
	text-align: center;
}

.cardBox .card .cardname {
	color: var(--black2);
	font-size: 1.5rem;
	font-weight: 500;
	margin-top: 5px;
	text-align: center;
}

.cardBox .card .iconbox {
	font-size: 3.5rem;
	color: var(--black2);
	text-align: center;
	padding-top: 10px;
}

.cardBox .card:hover {
	background: var(--yellow);
}

.cardBox .card:hover .numbers {
	color: var(--white);
}

.cardBox .card:hover .cardname {
	color: var(--white);
}

.cardBox .card:hover .iconbox {
	color: var(--white);
}

.look {
	padding-top: 150px;
	padding-bottom: 50px;
}

.question {
	width: 75%;
}

.options {
	position: relative;
	padding-left: 40px;
}

#options label {
	display: block;
	margin-bottom: 15px;
	font-size: 14px;
	cursor: pointer;
}

.options input {
	opacity: 0;
}

.checkmark {
	position: absolute;
	top: -1px;
	left: 0;
	height: 25px;
	width: 25px;
	background-color: #555;
	border: 1px solid #ddd;
	border-radius: 50%;
}

.options input:checked ~ .checkmark:after {
	display: block;
}

.options .checkmark:after {
	content: "";
	width: 10px;
	height: 10px;
	display: block;
	background: white;
	position: absolute;
	top: 50%;
	left: 50%;
	border-radius: 50%;
	transform: translate(-50%, -50%) scale(0);
	transition: 300ms ease-in-out 0s;
}

.options input[type="radio"]:checked ~ .checkmark {
	background: #21bf73;
	transition: 300ms ease-in-out 0s;
}

.options input[type="radio"]:checked ~ .checkmark:after {
	transform: translate(-50%, -50%) scale(1);
}

.btn-primary {
	background-color: #555;
	color: #ddd;
	border: 1px solid #ddd;
}

.btn-primary:hover {
	background-color: #21bf73;
	border: 1px solid #21bf73;
}

.btn-success {
	padding: 5px 25px;
	background-color: #21bf73;
}
</style>
</head>
<body>
	<header>
		<input type="checkbox" name="" id="toggler"> <a href="#"
			class="logo"><img
			src="https://www.vcubesoftsolutions.com/wp-content/uploads/2023/11/cropped-cropped-logo-c.png"
			width="150px" height="80px"></a>
		<nav class="navbar">
			<a href="../index.html">Home</a>
		</nav>
		<label for="toggler" class="fa-solid fa-bars"></label>
		<div class="drop_menu">
			<a href="../HomePage.jsp" id="Home">Home</a>

		</div>
	</header>
	<script>
        const togglerIcon =document.querySelector('.toggler i')
        const drop_menu =document.querySelector('.drop_menu')
        
        toggler.onclick =function(){
            drop_menu.classList.toggle('open')
            const isOpen = drop_menu.classList.contains('open')
            toggler.classList = isOpen
            ? 'fa-solid fa-xmark'
            : 'fa-solid fa-bars'
        }
    </script>
<body>
	<div class="container-fluid">
		<div class="row look">
			<div class="col-md-3"></div>
			<div class="col-md-6"
				style="background-color: rgb(244, 215, 75); border-radius: 20px;">
				<div class="row">
					<div class="col-md-12">
						<h4
							style="text-align: center; padding-top: 10px; padding-bottom: 10px;">
							<b>Java Test</b>
						</h4>
					</div>
				</div>
				<form name="startexamform" method="post" action="Questions" >
					<div class="ml-md-3 ml-sm-3 pl-md-5 pt-sm-0 pt-3" id="options">
					       <%! int count1=0; %>
					       <%! int count2=0; %>
					       <%      
					       ArrayList qlist=(ArrayList)session.getAttribute("al");
					       
					       ArrayList oplist=(ArrayList)session.getAttribute("oplist");
					       for (int i = 0; i < qlist.size(); i += 2){
					    	      count1++;
					    	  int id=qlist.get(i);
					    	  String question=qlist.get(i+1);
					    	  for(int j=0;j<oplist.size();j+=3){
					    		 
					    		  if( id== oplist.get(j+1))
					    		  {
					    			   count++;
					    			  int opstionId= oplist.get(j);
					    			  String opstionName=oplist.get(j+2);
					    			  
					    			  
					    			  
					    				  
					    			  
					    			  
					    			  
					       %>
					       
					       
					      <label class="options"><%=question %> <input
							type="radio" name="radio" value="<%=id%>">
							<span class="checkmark"></span>
						    </label>
						    
						    
                         					
					           <%!if(count==1) {%>
						
						 <label class="options"><%=opstionName%> <input
							type="radio" name="radio" value="<%=opstionId%>">
							<span class="checkmark"></span>
						    </label>
						
						     <%!} %>
						     
						     
						     <%!if(count==2) {%>
						
						<label class="options"><%=opstionName %><input
							type="radio" name="radio" value="<%=opstionId%>">
							<span class="checkmark"></span>
						</label> 
						 <%!} %>
						
							<%! if(count==3) {%>
						<label class="options"><%=opstionName %><input
							type="radio" name="radio" value="<%=opstionId %>">
							<span class="checkmark"></span>
						</label> 
						
						<%! }%>
						
							<%! if(count==3) {%>
						<label class="options"><%=opstionName%> <input
							type="radio" name="radio" value="<%=opstionId %>">
							<span class="checkmark"></span>
						</label>
						<%!} %>
						
						
						<%} }} %>
					
						<div class="ml-auto mr-sm-5" style="padding-bottom: 10px;">
							<button class="btn btn-success">
								<a href="Questions=">Next</a>
							</button>
						</div>
					</div>
			</div>
			</form>
		</div>
	</div>
	<div class="col-md-3"></div>
	</div>
	</div>
</body>

</html>
