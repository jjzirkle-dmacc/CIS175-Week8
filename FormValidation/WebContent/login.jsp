<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script type="text/javascript">
function credentials() {
    var username = document.forms["loginForm"]["userName"].value;
    var password = document.forms["loginForm"]["password"].value;
    
    if (username == "" || password == "") {
        alert("Empty user name or password...");
        return false;
    }
    
    else if (username.length < 8 && username.length > 8) {
    	alert("User must be 8 characters...");
    	return false;
    }
    
    else if (password.length < 11) {
    	alert("Passowrd is too short...");
    	return false;
    }
}
</script>
</head>
<body>
	<h1>Hello! This is a JSP page!</h1>
	<form name="loginForm" action="LoginServlet">
		Enter your user name: <input type="text" name="userName" size="20"><br>
		Enter your password:   <input type="password" name="password" size="20"><br>
		<input type="submit" onClick="return credentials()" value="Login" />
	</form>
</body>
</html>