<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 
 		
 		
 			
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script type="text/javascript" >
			$(document).ready(function(){
				
				var html = '<tr><td><input class="form-control" type="text" name="name" required></td><td><input class="form-control" type="text" name="email" required></td><td><input class="form-control" type="text" name="address" required></td><td><input class="form-control" type="tel" name="phone" required></td><td><input class="btn btn-danger"  type="button" name="remove" id="remove" value="Remove" required></td></tr>';
				
				var x = 1;
				
				$("#add").click(function(){
					$("#table_field").append(html);
				});
				
				$("#table_field").on('click', '#remove', function(){
					$(this).closest('tr').remove();
				});
				
			}); 
		</script>
		
	</head>
	<body>
	
		<div class= "container">
			<form action="/saveMultipleEmployee" class="insert-form" id="insert-form" method = "POST">
				<hr>
					<h1 class="text-center" style="background: #37508a; color: #fff">Add Employees</h1>
				<hr>
				
				<div class = "input-field">
					<table class = "table table-bordered" id="table_field">
						<tr>
							<th>Full Name</th>
							<th>Email</th>
							<th>Address</th>
							<th>phone</th>
						</tr>
						
						<tr>
							<td><input class="form-control" type="text" name="name" required></td>
							<td><input class="form-control" type="text" name="email" required></td>
							<td><input class="form-control" type="text" name="address" required></td>
							<td><input class="form-control" type="tel" name="phone" required></td>
							<td><input class="btn btn-warning"  type="button" name="add" id="add" value="Add More" required></td>
						</tr>
						
					</table>
					
					<div class = "center" align="center">
						<input class="btn btn-success"  type="submit" name="save" id="save" value="Save Data" required>
					</div>
					
				</div>
			</form>
		</div>
		
	</body>
</html>