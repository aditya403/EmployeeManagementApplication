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
				
				var html = '<tr><td><input class="form-control" type="text" name="txtFullName" required></td><td><input class="form-control" type="text" name="txtRelationship" required></td><td><input class="form-control" type="text" name="txtMobile" required></td><td><input class="form-control" type="text" name="txtEmailAddress" required></td><td><input class="btn btn-danger"  type="button" name="remove" id="remove" value="Remove" required></td></tr>';
				
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
			<form action="/saveRelatives" class="insert-form" id="insert-form" method = "POST">
				<hr>
					<h1 class="text-center">Next of Kin</h1>
				<hr>
				
				<div class = "input-field">
					<table class = "table table-bordered" id="table_field">
						<tr>
							<th>Full Name</th>
							<th>Relationship</th>
							<th>Mobile</th>
							<th>Email Address</th>
							<th>Add or remove</th>
						</tr>
						
						<tr>
							<td><input class="form-control" type="text" name="txtFullName" required></td>
							<td><input class="form-control" type="text" name="txtRelationship" required></td>
							<td><input class="form-control" type="text" name="txtMobile" required></td>
							<td><input class="form-control" type="text" name="txtEmailAddress" required></td>
							<td><input class="btn btn-warning"  type="button" name="add" id="add" value="Add More" required></td>
						</tr>
						
					</table>
					
					<div class = "center" align="center">
						<input class="btn btn-success"  type="submit" name="save" id="save" value="Save Data" required>
					</div>
					
				</div>
			</form>
		</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<!-- 		<div class = "container"> -->
<!-- 			<div class = "Table"> -->
<!-- 				<div class = "title">Next Of Kin</div> -->
<%-- 				<form action="#" id = "relativeForm"> --%>
<!-- 					<div class = "relativesDetails"> -->
<!-- 						<div class = "input-box"> -->
<!-- 							<span class = "details">Full Name</span> -->
<!-- 							<input type = "text" placeholder = "enter full name" required> -->
<!-- 						</div> -->
<!-- 						<div class = "input-box"> -->
<!-- 							<span class = "details">Relationship</span> -->
<!-- 							<input type = "text" placeholder = "enter relationship" required> -->
<!-- 						</div> -->
<!-- 						<div class = "input-box"> -->
<!-- 							<span class = "details">Mobile Number</span> -->
<!-- 							<input type = "text" placeholder = "enter mobile no." required> -->
<!-- 						</div> -->
<!-- 						<div class = "input-box"> -->
<!-- 							<span class = "details">Email Address</span> -->
<!-- 							<input type = "text" placeholder = "enter email address" required> -->
<!-- 						</div> -->
<!-- 					</div> -->
<%-- 				</form> --%>
<!-- 			</div> -->
				
<!-- 			<div class = "button"> -->
<!-- 				<input class = "buttonSave" type = "Submit" name="save" id="save" value = "Save Relatives" > -->
<!-- 				<input class = "buttonAdd" type = "button" name="addMore" id="addMore" value = "Add More" > -->
<!-- 			</div> -->
			
<!-- 		</div> -->
	
	</body>
</html>