<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>





</head>
<body>

<%! public int a=10; %>

<%= a %>
<div>
<table border=i>
    <th> number</th>
     <th> result</th>

   <% for(int i=0;i<10;i++){%>
   <tr>
        <td><%= i %></td>
        <td> <%= i*i %></td>
   
   <tr>
   
   <% } %>





</table>






</body>
</html>