<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" type = "css/text" href="/CSS/AllCssFile.css">
	</head>
	<body>
	
		<div align="center">
			<h2>Add Employee</h2>
			<form:form action="saveEmployee" modelAttribute="employee" method = "POST">
					<form:hidden path="id"/>
					<label>Name : </label>
					<form:input path="name"/>
					<br/>
					
					<label>Email : </label>
					<form:input path="email"/>
					<br/>
					
					<label>Phone : </label>
					<form:input path="phone"/>
					<br/>
					
					<label>Address : </label>
					<form:input path="address"/>
					<br/>
					
					<input type="submit" value="Submit">
			
			</form:form>
		
		</div>
		
	
	
	
	<!-- 	<div> -->
	<%-- 		<form action="addEmployee"> --%>
	<!-- 			<input type="text" name = "id">Id<br> -->
	<!-- 			<input type="text" name = "name">Name<br> -->
	<!-- 			<input type="text" name = "email">email<br> -->
	<!-- 			<input type="text" name = "address">address<br> -->
	<!-- 	  		<input type="text" name = "phone">phone<br> -->
	<!-- 			<input type="Submit"><br> -->
	<%-- 		</form> --%>
	<!-- 		<br> -->
	<!-- 		<a href = "/showEmployee">Home</a> -->
	<!-- 	</div> -->
		
		
	</body>
</html>