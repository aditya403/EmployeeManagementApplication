<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<style>
		
		@import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
		body{
			font-family: 'Open Sans', sans-serif;
			place-items:center; 
		}
	  	td {
	    	padding: 0 33px;
	  	}
		
		.myTable{
			width:100%;
			font-family:sans-serif;
		}
		.table{
			align:"center"
		}
		
		.flex-parent {
		  display: flex;
		}
		.flex-child {
		  flex: 1;
		}
		.headerButtons{
			display: inline-block;
			padding-top:25px;
		}
		.parent flex-parent{
			padding-top:25px;
		}
		.grid-parent {
		  display: grid;
		  grid-template-columns: 1fr 1fr
		}
		.mainTable{
			display: flex;
			flex-direction: column;
		}
		.wrapper{
			width:1500px;
			height:500px;
		}
		html, body{
			display:grid;
			height:100%;
			place-items:center;
		}
		.TopHeader{
			background:#37508a;
			width:1000px;
			padding-left:0px;
			margin-left:15px;
		}
		.Table{
			width:1000px;
		}
		.pagination{
			margin-left:5px;
		}
	</style> 
	
	
	</head>
	<body>
	<div class="wrapper">
		<div class = "container" align="center">
			<div class="mainTable">
				<div class="TopHeader">
					<div class = "parent grid-parent" align = "center">
						<div class = "child" style = "padding-top:25px; color:#f0f5ff"><h1 >Manage Employees</h1></div>
						<div class = "child flex-child">
							<div class="headerButtons">
								<form action="AddEmployee">
									<input type="Submit" value="Add Employee" class = "btn btn-success" >
								</form>
							</div>
							<div class="headerButtons">
								<form >
									<input type="Submit" value="Delete Employees" class = "btn btn-danger" >
								</form>
							</div>
						</div>
					</div>
				</div>
				
				<div class="Table">
					<div class="table table-striped table-hover"  >
						<table>
							<thead>
								<tr>
									<td scope="col" style = "font-weight:bold">Name</td>
									<td scope="col" style = "font-weight:bold">Email</td>
									<td scope="col" style = "font-weight:bold">Address</td>
									<td scope="col" style = "font-weight:bold">Phone</td>
									<td scope="col" style = "font-weight:bold">Actions</td>
								</tr>
							</thead>
							<c:forEach var="employee" items="${employees}">
								<tr>
								<td>${employee.name}</td>
								<td>${employee.email}</td>
								<td>${employee.address}</td>
								<td>${employee.phone}</td>
								<td><a href="updateEmployee?id=${employee.id}">
									<img src="https://img.icons8.com/fluency/48/000000/edit.png" style= "width:20px; height:20px;"/>
									</a>
									<a href="DeleteEmployee?id=${employee.id}">
									<img src="https://img.icons8.com/plasticine/100/000000/filled-trash.png" style= "width:20px; height:20px;"/>
									</a>
								</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			
				<div class="pagination">
					<div class = "pagination pagination-sm">
						<nav aria-label="Page navigation example">
						  <ul class="pagination">
						    <li class="page-item">
						      <a class="page-link" href="#" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						        <span class="sr-only">Previous</span>
						      </a>
						    </li>
						    <li class="page-item"><a class="page-link" href="#">1</a></li>
						    <li class="page-item"><a class="page-link" href="#">2</a></li>
						    <li class="page-item"><a class="page-link" href="#">3</a></li>
						    <li class="page-item">
						      <a class="page-link" href="#" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						        <span class="sr-only">Next</span>
						      </a>
						    </li>
						  </ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
		
		
		
	</body>
</html>