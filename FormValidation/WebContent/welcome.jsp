<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome!</title>
</head>
<body>

<!-- Make sure username isn't empty to prevent direct jsp access
     Redirect if no username
     
     Future enhancements would be a class to handle JPA for a user table in the database for explicit access only.
     
 -->

	<%
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
		}
	%>

	Oh, hey there...${username}.  I know your password is...${password}!!!  

</body>
</html>