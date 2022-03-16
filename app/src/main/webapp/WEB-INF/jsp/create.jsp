<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>  
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<head>
<title>Patient Details</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="<c:url value="/css/main.css"/>" rel="stylesheet" type="text/css">
</head>
<body>
	<br><br>
	<h1 align="center">Patient Registration</h1>
	<br>
	<div class="card" style="width:70%;">
		<form action="<%= request.getContextPath() %>/list" method="post" modelAttribute="patient">
		<!-- <form action="action.jsp" method="post"> -->
		<br>
			<label for="firstName">First Name:</label> 
			<input type="text" id="firstName" name="firstName" placeholder="Enter text"><br><br> 
			<label for="lastName">Last Name:</label> 
			<input type="text" id="lastName" name="lastName" placeholder="Enter text"><br><br> 
			<label for="gender">Gender:</label>
			<input type="radio" name="gender" value="female"> Female 
			<input type="radio" name="gender" value="male"> Male 
			<input type="radio" name="gender" value="other"> Other <br><br> 
			<label for="bloodGroup">Blood Group:</label> 
			<select  name="bloodGroup" >
				<option value="" style="display: none"></option>
				<option value="O +ve">O +ve</option>
				<option value="O -ve">O -ve</option>
				<option value="A +ve">A +ve</option>
				<option value="A -ve">A -ve</option>
				<option value="B +ve">B +ve</option>
				<option value="B -ve">B -ve</option>
				<option value="AB +ve">AB +ve</option>
				<option value="AB -ve">AB -ve</option>
			</select><br><br>
			<label for="purpose">Purpose:</label>
			<input type="checkbox" name="purpose" value="covid"> Covid 
			<input type="checkbox" name="purpose" value="non-covid"> Non-covid 
			<input type="checkbox" name="purpose" value="medical-care"> Medical-care
			<input type="checkbox" name="purpose" value="admission"> Admission
			<input type="checkbox" name="purpose" value="discharge"> Discharge
			<input type="checkbox" name="purpose" value="insurance"> Insurance <br><br>
			<div style="text-align:center"> 
			<input type="submit" value="Submit">
			<input type="reset" value="Reset">
			<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/home'">Cancel</button>
			</div>
		</form>
	</div>
</body>
</html>

