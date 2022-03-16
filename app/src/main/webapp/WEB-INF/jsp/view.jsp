<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>  
<html>   
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<head>
<title>Patients List</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="<c:url value="/css/main.css"/>" rel="stylesheet" type="text/css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>
	<br><br>
	<h1 align="center">List of Patients</h1>
	<div class="card" style="width:70%; overflow:auto;">
	<table border = "1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>			
			<th>Gender</th>
			<th>Blood Group</th>
			<th>Purpose</th>
		</tr>
		<c:forEach items="${patientList}" var="p">
			<tr>
				<td>${p.firstName}</td>
				<td>${p.lastName}</td>
				<td>${p.gender}</td>
				<td>${p.bloodGroup}</td>
				<td>${p.purpose}</td>
				<td>
					<a href = "${pageContext.request.contextPath}/edit/${p.id}"><i class='fas fa-pen'></i></a> |
					<a href = "${pageContext.request.contextPath}/delete/${p.id}"><i class='fas fa-trash'></i></a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<div class="container" style="text-align:center">
	<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/register'">Add Patient</button>
	<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/home'">Home</button>
	</div>
	</div>
</body>
</html>

	