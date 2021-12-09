<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
table{
	width: 70%;
	background-color: AliceBlue
}
td{

	padding:10px;	
}
span{
	color:red;
	padding:5px;
}

.footer{

	text-align:right;
	width: 69%;
	border-top:1px solid LightSlateGray;
	border-bottom:1px solid LightSlateGray;
	padding:5px;
	background-color: #e6f3ff;
	
}
.header{

	text-align:left;
	width: 69%;
	border-top:1px solid LightSlateGray;
	border-bottom:1px solid LightSlateGray;
	padding:5px;
	background-color: #e6f3ff;
	color : MidnightBlue;
}

input[type = submit]{
	background-color: AliceBlue;
	border:1.5px solid LightSlateGray;
	border-radius: 5px;
}
</style>
</head>
<body>
	
	<div align="center">
	<form action="login" method = "post">
		<div class ="header"><b>Login</b></div>
		
		<table >			
			<tbody >
				<tr style="padding: 10px"><td>Username:</td><td><span>*</span><input type="text" name="username" required ></td></tr>
				<tr><td>Password:</td><td><span>*</span><input type="password" name="password" required></td></tr>
				<tr><td></td><td><a href="url">Forgotten your password? </a></td></tr>
			</tbody>
							
		</table>
	<div class ="footer"><input type="submit" value="Login>>" ></div>	
			
	</form>
	
</body>
</html>