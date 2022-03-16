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
	<h1 align="center">Update Patient Details</h1>
	<br>
	<div class="card" style="width:70%;">
		<form action="<%= request.getContextPath() %>/update" method="post" modelAttribute="patient">
		<!-- <form action="action.jsp" method="post"> -->
		<br>
			<label for="firstName">First Name:</label> 
			<input type="text" id="firstName" name="firstName" placeholder="Enter text" value="${patient.firstName}"><br><br> 
			<label for="lastName">Last Name:</label> 
			<input type="text" id="lastName" name="lastName" placeholder="Enter text" value="${patient.lastName}"><br><br> 
			<label for="gender">Gender:</label>
			<c:set var="gender" value="${patient.gender}"/>
			<input type="radio" name="gender" value="female" <c:if test="${gender=='female'}">checked</c:if>> Female 
			<input type="radio" name="gender" value="male" <c:if test="${gender=='male'}">checked</c:if>> Male 
			<input type="radio" name="gender" value="other" <c:if test="${gender=='other'}">checked</c:if>> Other <br><br> 
			<label for="bloodGroup">Blood Group:</label> 
			<select  name="bloodGroup" >
				<option value="" style="display: none"></option>
				<option value="O +ve" ${patient.bloodGroup == 'O +ve' ? 'selected' : ''}>O +ve</option>
				<option value="O -ve" ${patient.bloodGroup == 'O -ve' ? 'selected' : ''}>O -ve</option>
				<option value="A +ve" ${patient.bloodGroup == 'A +ve' ? 'selected' : ''}>A +ve</option>
				<option value="A -ve" ${patient.bloodGroup == 'A -ve' ? 'selected' : ''}>A -ve</option>
				<option value="B +ve" ${patient.bloodGroup == 'B +ve' ? 'selected' : ''}>B +ve</option>
				<option value="B -ve" ${patient.bloodGroup == 'B -ve' ? 'selected' : ''}>B -ve</option>
				<option value="AB +ve" ${patient.bloodGroup == 'AB +ve' ? 'selected' : ''}>AB +ve</option>
				<option value="AB -ve" ${patient.bloodGroup == 'AB -ve' ? 'selected' : ''}>AB -ve</option>
			</select><br><br>
			<label for="purpose">Purpose:</label>
			<c:set var="purpose" value="${patient.purpose}"/>
			<input type="checkbox" name="purpose" value="covid" <c:if test="${purpose.contains('covid')}">checked</c:if>> Covid 
			<input type="checkbox" name="purpose" value="non-covid" <c:if test="${purpose.contains('non-covid')}">checked</c:if>> Non-covid 
			<input type="checkbox" name="purpose" value="medical-care" <c:if test="${purpose.contains('medical-care')}">checked</c:if>> Medical-care
			<input type="checkbox" name="purpose" value="admission" <c:if test="${purpose.contains('admission')}">checked</c:if>> Admission
			<input type="checkbox" name="purpose" value="discharge" <c:if test="${purpose.contains('discharge')}">checked</c:if>> Discharge
			<input type="checkbox" name="purpose" value="insurance" <c:if test="${purpose.contains('insurance')}">checked</c:if>> Insurance <br><br>
			<div style="text-align:center"> 
			<input type="submit" value="Save">
			<input type="reset" value="Reset">
			<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/home'">Cancel</button>
			</div>
		</form>
	</div>
</body>
</html>

