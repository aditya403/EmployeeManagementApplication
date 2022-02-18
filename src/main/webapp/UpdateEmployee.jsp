<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 
<title>Insert title here</title>
</head>
<body>
	<div class="container">
			<h2>Update Employee</h2>
			<form:form action="saveUpdatedEmployee" modelAttribute="employee" method = "POST">
					<form:hidden path="id"/>
					<label class="form-label">Name : </label>
					<form:input path="name" class="form-control"/>
					<br/>
					
					<label class="form-label">Email : </label>
					<form:input path="email" class="form-control"/>
					<br/>
					
					<label class="form-label">Phone : </label>
					<form:input path="phone" class="form-control"/>
					<br/>
					
					<label class="form-label">Address : </label>
					<form:input path="address" class="form-control"/>
					<br/>
					
					<input type="submit" value="Submit" class="btn btn-success">
			
			</form:form>
		
		</div>
</body>
</html>