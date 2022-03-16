<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Aarthi's Application</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="<c:url value="/css/main.css"/>" rel="stylesheet" type="text/css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>
<br>
	<h1 align="center"><i class='fas fa-book-medical' style='font-size:40px;'></i> Application</h1>
	<div class="card-columns">
		<div class="card" style="width:70%; cursor:pointer;" onclick="window.location.href='${pageContext.request.contextPath}/register'">
		<div class="container" >
			<h4>
				<i class='fas fa-user-plus' style='font-size:20px'></i><b> Register Patient</b>
			</h4>
		</div>
		</div>
		<div class="card" style="width:70%; cursor:pointer;" onclick="window.location.href='${pageContext.request.contextPath}/home_list'">
		<div class="container">
			<h4>
				<i class="fas fa-user-clock" style='font-size:20px'></i><b> Update Patient Details</b>
			</h4>
		</div>
		</div>
		<div class="card" style="width:70%; cursor:pointer;" onclick="window.location.href='${pageContext.request.contextPath}/home_list'">
		<div class="container">
			<h4>
				<i class='fas fa-eye' style='font-size:20px;'></i><b> View Patients List</b>
			</h4>
		</div>
		</div>
		<div class="card" style="width:70%; cursor:pointer;" onclick="window.location.href='${pageContext.request.contextPath}/home_list'">
		<div class="container">
			<h4>
				<i class='fas fa-user-minus' style='font-size:20px;'></i><b> Delete Patient Details</b>
			</h4>
		</div>
		</div>
	</div>
	
</body>
</html>