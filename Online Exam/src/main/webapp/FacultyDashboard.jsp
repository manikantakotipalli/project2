<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="../pictures/OBOkart Logo copy1.png"type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <link rel="stylesheet" href="nav.html">
    <title>Vcube</title>
    <style>
        header{
            position: fixed;
            top:0;left:0;right:0;
            backdrop-filter: blur(10px);
            padding: 0rem 5%;
            display: flex;
            align-items:center;
            justify-content: space-between;
            z-index: 1000;
            box-shadow: 0 .5rem 1rem rgba(0,0 , 0, .1);
        }
        header .logo span{
            color:red;

        }
        header .navbar a{
            font-size: 2rem;
            padding:0 1.5rem;
            padding-top: 20px;
            color: #060606;
            text-decoration-line: none;
            font-weight: bold;
        }
        header .navbar a:hover{
            color:rgb(254, 201, 27);
            text-decoration-line: none;
            transform: scale(1.2);
        }
        header .icons a{
            font-size: 2.5rem;
            color: #fdfcfc;
            margin-left: 2rem;
            transform: scale(1.2);
        }
        header .icons a:hover{
            color:rgb(254, 201, 27);
            text-decoration-line: none;
        }
        header #toggler{
            display: none;
        }
        header .fa-bars{
            font-size: 3rem;
            color: #333;
            border-radius: .5rem;
            padding:.5rem 1.5rem;
            cursor: pointer;
            border:.1rem solid rgba(0,0 , 0, .3);
            display: none;
        }
        .drop_menu{
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
        .drop_menu.open{
            height: 165px;
        }
        .drop_menu a{
            text-align: center;
            padding: 1rem;  
            color: #fdfbfb;
            font-size: 25px;
            display: flex;
            justify-content: center; 
            text-decoration: none;
            font-weight: bold;
        }
        .drop_menu a:hover{
            transform: scale(1.2);
        }
        .drop_menu{
            display: block;
        }
        @media (max-width:1440px){
            html{
            font-size: 55%;
            }
        }
        @media (max-width:768px){
            header .fa-bars{
                display:flex;
                
            }
            header .navbar{
                position: absolute;
                top:100%;left:0;right:0;
                background: #080000;
                border-top: .1rem solid rgba(0,0 , 0, .1);
                
            }
            header .navbar a{
                margin: 1.5rem;
                padding: 1.0rem;
                background: #0c0000;
                border:.1rem solid rgba(0,0 , 0, .1);
                display:block;
            }
            header .icons{
                display: none;
            }
            
        }
        @media (max-width:768px) {
            header .navbar a{
                display: none;
            }
            header .navbar {
                display: none;
            }
            header .fa-bars{
                display:flex;
                background-color: rgba(252, 250, 250, 0.929);
                transition: 0.3s;
            }
        }
        header .fa-bars:hover{
            transform: scale(1.1);
        }
        @media (max-width:430px){
            html{
            font-size: 40%;
            }
            header .fa-bars{
                display:flex;
                background-color: rgba(252, 250, 250, 0.929);
                font-size: x-large;
            }
            header .navbar a{
                display: none; 
            }
            header .navbar{
                display: none;
            }  
            .center{
              display:flex;
              justify-content: center;
              align-items: center;
              font-size: 30px;
              color: rgb(246, 217, 56);
            }
            
        }
        .drop_menu{
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
        .drop_menu.open{
            height: 165px;
        }
        .drop_menu a{
            text-align: center;
            padding: 1rem;  
            color: #fdfbfb;
            font-size: 25px;
            display: flex;
            justify-content: center; 
            text-decoration: none;
            font-weight: bold;
        }
        .drop_menu a:hover{
            transform: scale(1.2);
        }
        .drop_menu{
            display: block;
        }
        .cardBox{
            position:relative;
            width:100%;
            padding:20px;
        }
        .cardBox .card{
            position:relative;
            background: (--white);
            padding:30px;
            border-radius: 20px;
            display: flex;
            justify-content:space-between;
            box-shadow: 0 7px 25px rgba(0,0 , 0, 0.08);
            cursor: pointer;
        }
        .cardBox .card .numbers{
            position:relative;
            font-weight:500;
            font-size:2.5rem;
            color:var(--yellow);
            text-align: center;
        }
        .cardBox .card .cardname{
            color:var(--black2);
            font-size:1.5rem;
            font-weight:500;
            margin-top:5px;
            text-align: center;
        }
        .cardBox .card .iconbox{
            font-size: 3.5rem;
            color:var(--black2);
            text-align: center;
            padding-top: 10px;
        }
        .cardBox .card:hover{
            background:var(--yellow);
        }
        .cardBox .card:hover .numbers{
            color: var(--white);
        }
        .cardBox .card:hover .cardname{
            color: var(--white);
        }
        .cardBox .card:hover .iconbox{
            color: var(--white);
        }
    
    </style>
</head>
<body>
    <header>
        <input type="checkbox" name="" id="toggler">
        <a href="#" class="logo"><img src="https://www.vcubesoftsolutions.com/wp-content/uploads/2023/11/cropped-cropped-logo-c.png" width="150px" height="80px"></a>
        <nav class="navbar">
            <a href="HomePage.jsp">Home</a>
        </nav>
        <label for="toggler" class="fa-solid fa-bars"></label>
        <div class="drop_menu">
            <a href="../AdminLogin.html" id="Home">Admin</a>
            <a href="../FacultyLogin.html" id="Product">Faculty</a>
            <a href="../StudentLogin.html" id="Contact">Student</a>
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
    <div class="container-fluid" style="padding-top:100px;">
        <div class="row" style="display: flex;">
            <div class="col-md-4">
                <div class="cardBox">
                    <div class="card">
                        <div class="numbers">Dashboard</div>
                        <div class="iconbox btn">
                            <a href="../StudentRegisteration.html" style="COLOR:BLACK"><ion-icon name="people-outline"></ion-icon></a>
                        </div>
                    </div>
                </div>
                <div class="cardBox">
                    <div class="card">
                        <div class="numbers">Add Questions</div>
                        <div class="iconbox btn">
                            <a href="Questions.jsp" style="COLOR:BLACK"><ion-icon name="book-outline"></ion-icon></a>
                        </div>
                    </div>
                </div>
                <div class="cardBox">
                    <div class="card">
                        <div class="numbers">Results</div>
                        <div class="iconbox btn" >
                            <a href="../StudentRegisteration.html" style="COLOR:BLACK"><ion-icon name="add-circle-outline"></ion-icon></a>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="details">
                    <div class="listitems">
                        <div class="cardheader" style="text-align: center;">
                            <h2>Students List</h2>
                        </div>
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>S.no</th>
                                    <th>FirstName</th>
                                    <th>LastName</th>
                                    <th>PhoneNumber</th>
                                    <th>Email</th>
                                    <th>Course</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Veera Manikanta</td>
                                    <td>Ketha</td>
                                    <td>7989855884</td>
                                    <td>manikanta@gmail.com</td>
                                    <td>Java Full Stack</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Veera Manikanta</td>
                                    <td>Ketha</td>
                                    <td>7989855884</td>
                                    <td>manikanta@gmail.com</td>
                                    <td>Java Full Stack</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Veera Manikanta</td>
                                    <td>Ketha</td>
                                    <td>7989855884</td>
                                    <td>manikanta@gmail.com</td>
                                    <td>Java Full Stack</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Veera Manikanta</td>
                                    <td>Ketha</td>
                                    <td>7989855884</td>
                                    <td>manikanta@gmail.com</td>
                                    <td>Java Full Stack</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Veera Manikanta</td>
                                    <td>Ketha</td>
                                    <td>7989855884</td>
                                    <td>manikanta@gmail.com</td>
                                    <td>Java Full Stack</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Veera Manikanta</td>
                                    <td>Ketha</td>
                                    <td>7989855884</td>
                                    <td>manikanta@gmail.com</td>
                                    <td>Java Full Stack</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Veera Manikanta</td>
                                    <td>Ketha</td>
                                    <td>7989855884</td>
                                    <td>manikanta@gmail.com</td>
                                    <td>Java Full Stack</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>Veera Manikanta</td>
                                    <td>Ketha</td>
                                    <td>7989855884</td>
                                    <td>manikanta@gmail.com</td>
                                    <td>Java Full Stack</td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>Veera Manikanta</td>
                                    <td>Ketha</td>
                                    <td>7989855884</td>
                                    <td>manikanta@gmail.com</td>
                                    <td>Java Full Stack</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</body>
</html>
    